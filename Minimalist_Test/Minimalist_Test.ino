#include <Wire.h>
#include <VEML7700.h>
#include <SnoutnetAHT10.h>

# define SDAPIN 4
# define SCLPIN 5

//-----------------------------------------------------------------
void setup() {
  Serial.begin(115200);
  
  Serial.print("\n\nBooting because ");
  Serial.println(ESP.getResetReason());

  Serial.println("Enabling I2C");
  Wire.begin(SDAPIN, SCLPIN);

  SnoutnetAHT10 aht10;
  VEML7700 veml7700;

  aht10.begin();
  veml7700.begin();

  // start a light reading now.
  if( VEML7700::STATUS_OK == veml7700.setPower(1) ) {
    veml7700.setGain(VEML7700::ALS_GAIN_x1);
    veml7700.setIntegrationTime(VEML7700::ALS_INTEGRATION_100ms);
  }
  
  // take the temperature readings as early as possible. You also want to do this
  // before bringing up wireless or anything that takes time; things will warm up *fast*.
  double tt, rh;
  if( aht10.getReading(&tt,&rh) ) {
    Serial.printf("Temperature %gC\n", tt);
    Serial.printf("Relative Humidity %g%%\n", rh);
  }

  veml7700.sampleDelay();
  float lux;
  if( VEML7700::STATUS_OK == veml7700.getALSLux(lux) ) {
    Serial.printf("Ambient Light %glux\n", lux);
  }

  // power down the ALS. The AHT10 is run in one-shot mode.
  veml7700.setPower(0);

  // 60 seconds of deep sleep
  ESP.deepSleep(60 * 1000000);

  // we'll never reach here
}

void loop() {
}
