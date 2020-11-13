#ifndef __TIMER_H__
#define __TIMER_H__

#include <sysdep.h>

/**
 * Note:
 * TIMER indexed from 0 to 5.
 * Timer7 and Timer6 is reserved for delay and tic function, user can't use.
 * Timer index start from 0.
 */
#define TIMER0                           0
#define TIMER1                           1
#define TIMER2                           2
#define TIMER3                           3
#define TIMER4                           4
#define TIMER5                           5

/* Timer IRQ num */
#define TIMER_IRQ_NUM                    10

/* Timer config options */

/* reload_mode */
#define TIMER_LOAD_ONE_SHOT              0
#define TIMER_LOAD_AUTO                  1

/* work_mode */
#define TIMER_MODE_TIMER                 0
#define TIMER_MODE_PWM                   1

/* macro define */
#define TIMER_EXPIRED(timer_num, intr_status)  ((((1 << timer_num) & intr_status) > 0) ? 1 : 0)

/* struct/enum */
typedef struct timer_config {
    uint32 us;           // TIMER UINT:us
    uint32 reload_mode;  // TIMER_ONE-SHOT/TIMER_AUTO_RELOAD
    uint32 work_mode;    // TIMER_MODE_TIMER/PWM
    float  pwm_ratio;    // (0-1),when work_mode = TIMER_MODE_PWM, set pwm duty cycle
} timer_config_t;

/* functions */
int32 timer_hw_init(uint32 timer, timer_config_t *config);
void timer_intr_enable(uint32 timer);
void timer_intr_disable(uint32 timer);
uint32 timer_intr_status(void);
void timer_intr_clear(uint32 intr_src);
int32 timer_start(uint32 timer);
int32 timer_stop(uint32 timer);
bool timer_is_timeout(uint32 timer);
uint32 timer_count_get(uint32 timer);
void timer_pm_adjust(uint32 timer);
void timer_pm_recover(uint32 timer);

int32 tic_init(void);
void tic_start(void);
uint32 tic_stop(void);
uint32 tic_us_get(uint32 count);

#endif /* __TIMER_H__ */
