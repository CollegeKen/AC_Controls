// Distributed with a free-will license.
// Use it any way you want, profit or free, provided it fits in the licenses of its associated works.
// SI7021
// This code is designed to work with the SI7021_I2CS I2C Mini Module available from ControlEverything.com.
// https://www.controleverything.com/content/Humidity?sku=SI7021_I2CS#tabs-0-product_tabset-2

// Including the ports before the program
// Included SlowSoftI2CMaster to be able to add multiple sensors by changing the ports to 
// SDA/SCL pins. This code is mostly changed from the original in that the functions are changed 
#include <SlowSoftI2CMaster.h>
#include <avr/io.h>

SlowSoftI2CMaster si = SlowSoftI2CMaster (16, 15);    //(SDA, SCL)

#define Addr 0x40

void setup()
{
  
  // Initialise I2C communication as MASTER
  si.i2c_init();
  // Initialise serial communication, set baud rate = 9600
  Serial.begin(9600);
    
  // Start I2C transmission
  si.i2c_read(Addr);
  // Stop I2C transmission
  si.i2c_stop();
  delay(1000);
}

void loop()
{
  unsigned int data[2];
  
  // Start I2C transmission
  si.i2c_start(Addr);
  // Send humidity measurement command, NO HOLD MASTER
  si.i2c_write(0xF5);
  // Stop I2C transmission
  si.i2c_stop();
  delay(1000);
 
   // Convert the data
  float humidity  = ((data[0] * 256.0) + data[1]);
  humidity = ((125 * humidity) / 65536.0) - 6;
  
  // Start I2C transmission
  si.i2c_start(Addr);
  // Send temperature measurement command, NO HOLD MASTER
  si.i2c_write(0xF3);
  // Stop I2C transmission
  si.i2c_stop();
  delay(500);

  
  data[0] = si.i2c_read(Addr);
  data[1] = si.i2c_read(Addr);
  
  // Convert the data
  float temp  = ((data[0] * 256.0) + data[1]);
  float cTemp = ((175.72 * temp) / 65536.0) - 46.85;
  float fTemp = cTemp * 1.8 + 32;
   
  // Output data to serial monitor
  Serial.print("Relative humidity : ");
  Serial.print(humidity);
  Serial.println(" % RH");
  Serial.print("Temperature in Celsius : ");
  Serial.print(cTemp);
  Serial.println(" C");
  Serial.print("Temperature in Fahrenheit : ");
  Serial.print(fTemp);
  Serial.println(" F");
  delay(1000);
}
