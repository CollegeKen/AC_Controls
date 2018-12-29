#include <Wire.h>
#include <SI7021.h>


SI7021 sensor;

void setup() {

    sensor.begin();
    Serial.begin(9600);
}


void loop() {
 /* int temperature = sensor.getCelsiusHundredths();
    temperature = temperature / 100;
    temperature = (((temperature / 5) * 9) + 32);
    Serial.println(temperature);
    delay(2000);

    int humidity = sensor.getHumidityPercent();
    Serial.println(humidity);
    delay(2000);
*/
     si7021_env data = sensor.getHumidityAndTemperature();
     float T = data.celsiusHundredths/100;
     T = (((T / 5) * 9) + 32);
     int t = T;
     Serial.print("temperature: ");
     Serial.println(t);
     float H = data.humidityBasisPoints/100;
     int h = H;
     Serial.print("humidity: ");
     Serial.println(h);
     float W = (330.0 + 0.452*T + 0.00415*(T*T));
     Serial.print("variable W: ");
     Serial.println(W,6);
     float K = (.7910 + 0.000463*T - 0.000000844*(T*T));
     Serial.print("variable K: ");
     Serial.println(K,6);
     float KH = K*H; 
     Serial.print("variable KH: ");
     Serial.println(KH,6);
     float K1 = (6.34 + 0.000775*T - 0.0000935*(T*T));
     Serial.print("variable K1: ");
     Serial.println(K1,6);
     float K2 = (1.09 + 0.0284*T - 0.0000904*(T*T));
     Serial.print("variable K2: ");
     Serial.println(K2,6);
     //float EMC = (1800.0/W * ( KH/(1-KH) + ((K1*KH + 2*K1*K2*K*K*H*H) / (1 + K1*KH + K1*K2*K*K*H*H)) ));
     float m1 = KH/(1-KH);
     float m2 = (K1*KH + 2*K1*K2*K*K*H*H);
     float m3 = (1 + K1*KH + K1*K2*K*K*H*H);
     float EMC2 = 1800/W * (m1 + (m2 / m3));
     //Serial.println(EMC,6);
     Serial.print("EMC: ");
     Serial.println(EMC2,6);
     delay(60000);

}
