//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variable
Minim minim; //create object to access all functions 
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates a "Play List" variable holding extensions WAV, AIFF, AU, SND AND MP3
int currentSong = numberOfSongs - numberOfSongs; //Current song is 0

void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("Music/Kanye West - Off The Grid (Audio) (320 kbps).mp3");
  song[currentSong+1] = minim.loadFile("Music/family ties (320 kbps).mp3");
  song[currentSong+2] = minim.loadFile("Music/Travis Scott - R.I.P. SCREW (Audio) (320 kbps).mp3");
  song[currentSong+3] = minim.loadFile("Music/Kanye West - Hurricane (Audio) (320 kbps).mp3");
  song[currentSong].play(1000);
}//End setup()

void draw() {
  powerButtonDraw();
  //
  if (song1.isLooping() ) {
    println ("Is Looping");
    println ( song1.loopCount() );
 }
}//End draw()

void keyPressed() {
  currentSong ++; // = currentSong = + 1, +=1
  if ( key == 'l' || key == 'L') song[currentSong].loop(0);
}//End keyPressed()
  
   /*//PlayPause
  if (key == 'p') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-3000 ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.play();
    }
  }
  //Play-Stop
  if (key == 's') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }
  //Fast Forward
  if (key == 'f') song1.skip(10000);
  //Fast Rewind
  if (key == 'r') song1.skip(-10000);
  //Mute
  if (key == 'm') { 
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  //Loop Function
  if (key == 'l' ||  key == 'L') song1.loop();
}//End keyPressed()

void mousePressed() {
   powerButtonMousePressed();
}//End mousePressed()
