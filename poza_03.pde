PImage img; 
import processing.sound.*; 
import ddf.minim.*;
Minim minim;
AudioPlayer player;
SoundFile file;
SoundFile file2;
color culoare; 

void setup() {
  size (1200, 800);
  background (255);
  img = loadImage("poza_03.jpg");
  minim = new Minim(this);// initialize minim object
  player = minim.loadFile("steps.WAV"); 
  player.play();
}

void draw() {
  image(img, 0, 0);
  loadPixels();  
  color culoare=get(mouseX, mouseY);
  println(brightness(culoare));
  
 if (player.isPlaying() && brightness(culoare) <=150) {
     player.pause();
     println("pause");
    } 
  if (!player.isPlaying() && brightness(culoare) >150) {
      println("play");
     player.play();
    }
}  
  
  
  


 
