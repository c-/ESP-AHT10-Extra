#include <Wire.h>
#include <LTR303.h>
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
  LTR303 ltr303;

  aht10.begin();
  ltr303.begin();

  // start a light reading now. We're using the defaults, so it's a 100 second
  // integration time.
  ltr303.setControl(0,false,true);
 
  double tt, rh;
  if( aht10.getReading(&tt,&rh) ) {
    Serial.printf("Temperature %gC\n", tt);
    Serial.printf("Relative Humidity %g%%\n", rh);
  }

  boolean valid, intr, data;
  byte gain;
  while( ltr303.getStatus(valid, gain, intr, data) ) {
    // we're only going for one reading, so valid is all we need; we don't
    // care if it's "new" data. However... sometimes we'll get the data flag
    // set and valid stays false?
    if( valid || data ) break;
    delay(20);

    // NOTE: a timeout would be smart
  }
  
  unsigned data0, data1;
  if( ltr303.getData(data0, data1) ) {
    double lux;
    if( ltr303.getLux(0,0,data0,data1,lux) ) {
      Serial.printf("Ambient Light %glux\n", lux);
    }
  }

  // put the LTR into standby mode
  ltr303.setControl(0,false,false);

  // 60 seconds of deep sleep
  ESP.deepSleep(60 * 1000000);

  // we'll never reach here
}

void loop() {
}
