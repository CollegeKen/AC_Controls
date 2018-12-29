/**
 * TCA9548 I2CScanner.pde -- I2C bus scanner for Arduino
 *
 * Based on code c. 2009, Tod E. Kurt, http://todbot.com/blog/
 *
 */
 
#include "Wire.h"
extern "C" { 
#include "utility/twi.h"  // from Wire library, so we can do bus scanning
}
#include "Adafruit_Si7021.h"
 
#define TCAADDR1 0x70        //1st Multiplexer
#define TCAADDR2 0x71        //2nd Multiplexer

Adafruit_Si7021 sensor = Adafruit_Si7021();
 
void tcaselect1(uint8_t i) {
  if (i > 7) return;
 
  Wire.beginTransmission(TCAADDR1);
  Wire.write(1 << i);
  Wire.endTransmission();  
}

void tcaselect2(uint8_t i) {
  if (i > 7) return;
 
  Wire.beginTransmission(TCAADDR2);
  Wire.write(1 << i);
  Wire.endTransmission();  
} 
 
// standard Arduino setup()
void setup()
{
    Serial.begin(115200);
    Serial.println("Temperature Sensor Array");
    sensor.begin();
    while (!Serial);
    delay(1000);
 
    Wire.begin();
    
    Serial.begin(115200);
    Serial.println("\nTemp/Humidity Sensor Array ready!");
    
}
 
void loop() 
{
    for (uint8_t t=2; t<8; t++) 
    {
      tcaselect1(t);
      Serial.print("Sensor #"); Serial.print(t-1);
      Serial.print(" Humidity:    "); Serial.print(sensor.readHumidity(), 2);
      Serial.print("\tTemperature: "); Serial.println(sensor.readTemperature(), 2);
      delay(1000);
    }

    for (uint8_t t=2; t<6; t++) 
    {
      tcaselect2(t);
      Serial.print("Sensor #"); Serial.print(t+5);
      Serial.print(" Humidity:    "); Serial.print(sensor.readHumidity(), 2);
      Serial.print("\tTemperature: "); Serial.println(sensor.readTemperature(), 2);
      delay(1000);
    }

}
