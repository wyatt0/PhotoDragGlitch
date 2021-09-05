int scale;
PImage img;
PImage img1;
int direction;
int size;
int copyWidth;
float angle = 1;
int counter = 1;
int background = 100;
int backgroundDir = 1;
int opacity = 0;
float r = random(0,100);
float g = random(0,100);
float b = random(0,100);
import processing.sound.*;
import java.util.*;
SoundFile file;

float distortion = 8; // amplitude
float speed1 = .01; // affects speed of wave scrolling
float speed2 = 2; // affects wave tightness
int xpos = 0;
int ypos = 0;
boolean set = false;
void setup()
{
  size(800,800);
  background(100);
  frameRate(60);
  scale = 2;
  stroke(0);
  fill(0);
  img = loadImage("yourimagehere.jpg");
  imageMode(CENTER);
  direction = -1;
  size = 195;
  image(img, 400, 400);
  copyWidth = 80;
  img1 = img.get(400 , 400 , 100, 100);
}

void mouseClicked(){
  img1 = img.get(mouseX - 50, mouseY + 150, 100, 100);
  xpos = mouseX;
  ypos = mouseY;
  set = true;
}
void mouseDragged() 
{
  if (set == false)
    mouseClicked();
  image(img1, mouseX, mouseY, 100, 100);
}

void mouseReleased(){
  set = false;
}
