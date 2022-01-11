//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variable
Minim minim; //create object to access all functions 
AudioPlayer song1; //creates a "Play List" variable holding extensions WAV, AIFF, AU, SND AND MP3

void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Travis Scott - R.I.P. SCREW (Audio) (320 kbps).mp3");
  song1.play(1000);
}//End setup()

void draw() {
  powerButtonDraw();
}//End draw()

void keyPressed() {
   if (key == 'p') {
    if ( song1.isPlaying() ) {
      println ("Here");
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}//End keyPressed()

void mousePressed() {
   powerButtonMousePressed();
}//End mousePressed()
