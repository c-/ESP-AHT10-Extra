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
  // integration time, and yeah, the sensor won't send anything back for
  // 100ms.
  // NOTE... the LTR-303 seems to be very... pissy. I'm suspecting that
  // there's some transient power draw that happens when wireless is enabled which
  // destabilizes the LTR-303 while it's processing, so in practice you can't do this,
  // *then* do the wireless connection, and then do a reading... the LTR-303 just goes
  // off into lala land. So when I'm using the network, I'll normally initialize the
  // sensors, perform my readings, put them into standby, then bring up wireless and
  // transmit.
  ltr303.setControl(0,false,true);

  // take the temperature readings as early as possible. You also want to do this
  // before bringing up wireless or anything that takes time; things will warm up *fast*.
  double tt, rh;
  if( aht10.getReading(&tt,&rh) ) {
    Serial.printf("Temperature %gC\n", tt);
    Serial.printf("Relative Humidity %g%%\n", rh);
  }

  boolean invalid, intr, data;
  byte gain;
  while( ltr303.getStatus(invalid, gain, intr, data) ) {
    // we're only going for one reading, so we just need good data.
    // new data is a nice to have. NOTE: the API calls it "valid", but
    // the actual bit interpretation per the datasheet is 0=>good, 1=>bad
    if( invalid==false || data ) break;
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
