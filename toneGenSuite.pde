void setup() {
  
}

// Plays a series of tones
void playTones(int pin, int toneLow, int toneHigh, int playTime, int delayTime, int increment) {
  for(int n = toneLow; n <= toneHigh; n = n + increment) {
  tone(pin, n, playTime);
  
  delay(delayTime);
  noTone(pin); 
 }
}

// Makes a goofy song from given tones
void playSong(int pin1, int pin2, int tone1, int tone2, int playTime, int delayTime) {
 tone(pin1, tone1, playTime);
 delay(delayTime);
 noTone(pin1);
 tone(pin2, tone2, playTime);
 delay(delayTime);
 noTone(pin2);
}

void loop() {
 // playTones(8, 0, 1000, 500, 500, 100); //plays tones from 0Hz to 1kHz in 100Hz increments
 // playTones(8, 100, 100, 500, 500, 0); //plays tone of 100Hz repeatedly
 
 // playSong(8,9,n,m,500,10);
 for(int n = 100; n <= 1000; n = n+100) {
   int m = n*4;
   playTones(8, 800, 1000, 100, 100, 25);
 }
}

