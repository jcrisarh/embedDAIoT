#ifndef ADC_H
#define ADC_H

#include "esp_adc/adc_oneshot.h"

#define ADC_NUM_CHANNELS (4)
#define ADC_SAMPLE_BUF_SIZE (9)
#define ADC_ATTEN ADC_ATTEN_DB_12
#define ADC_UP_RES_OHM (100000.0)
#define ADC_VCC_MV (3300.0)
#define ADC_MAX_CAL_MV (2880.0)

//ADC Channels
typedef enum
{
    ADC_CHAN0,
    ADC_CHAN1,
    ADC_CHAN2,
    ADC_CHAN3,
    ADC_CHAN_MAX = ADC_CHAN3
} adc_channels_list_t;

void adc_init(void);
void adc_deinit(void);
int adc_read_raw(adc_channels_list_t ch);
int adc_read_mv(adc_channels_list_t ch);
#endif