int sensorPin = A0; //sensorPin → variable name (you choose this name)
                    //A0 → Analog pin number 0

void setup() {
    Serial.begin(9600); //Serial → communication with your computer
}                       //begin(9600) → speed of communication (baud rate)

void loop() {
    int value = analogRead(sensorPin);  //analogRead(sensorPin) → reads voltage from pin A0   (value is between 0 and 1023 [for Arduino])
    float scaled = log(value +1);
    Serial.println(scaled);
}
