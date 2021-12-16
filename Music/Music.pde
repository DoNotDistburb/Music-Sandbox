import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Libraries

//Global Variable
Minim minim; //create object to access all functions 
AudioPlayer song1; //creates a "Play List" variable holding extensions WAV, AIFF, AU, SND AND MP3



void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Travis Scott - R.I.P. SCREW (Audio) (320 kbps).mp3");
  song1.play(1000);
}//End setup()

void draw() {
  powerButtonDraw();
}//End draw()

void keyPressed() {
}//End keyPressed()

void mousePressed() {
   powerButtonMousePressed();
}//End mousePressed()
