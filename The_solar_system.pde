/**************************************************
The Solar System
by Yuha Kim
All graphics are originals made using Adobe Ai.

**************************************************/

// Orbit size
float orbit[] = {129.5, 173.89, 219.07, 271.18, 330.31, 397.03, 478.69, 573.15};

// Planet size
float size[] = {8.8, 13.75, 15.4, 13.75, 24.2, 20.9, 17.6, 17.6};

//Angle array
float ang[] = {0, PI/6, PI/2, 3*PI/12, PI, 5*PI/4, 3*PI/2, 7*PI/4};

//Day
int days[] = {88, 225, 365, 687, 12*365, 29*365, 84*365, 165*365};

// Planet Position
float planetX, planetY;
float angle = 0;

//Current Planet
float curPlanet[] = {0, 0 , 0};

// Images
PImage bg;
PImage Mercury;
PImage Venus;
PImage Earth;
PImage Mars;
PImage Jupiter;
PImage Saturn;
PImage Uranus;
PImage Neptune;
float orbitCircumference[] = {87.97, 108.2, 149.6, 227.9, 778.5, 1429, 2871, 4495};
float orbitTime[] = {88, 224.7, 365.2, 687, 4333, 10759, 30685, 60190};

void setup () {
  size (718, 816);
  bg = loadImage("Background.png");
  Mercury = loadImage("Mercury.png");
  Venus = loadImage("Venus.png");
  Earth = loadImage("Earth.png");
  Mars = loadImage("Mars.png");
  Jupiter = loadImage("Jupiter.png");
  Saturn = loadImage("Saturn.png");
  Neptune = loadImage("Neptune.png"); 

  //PImage imageArray[]={Mercury, Venus, Earth, Mars, Jupiter, Saturn, Neptune};
}

void draw () { 
  //background
  image (bg,0,0); 
  
   
  //Hover start  
  if (touchPlanet(0,0,573.15)){
    image(Neptune, 0, 666);
  } 
  
  if (touchPlanet(0,0,478.69)){
    image(Saturn, 0, 666);
  }   
  
  if (touchPlanet(0,0,397.03)){
    image(Jupiter, 0, 666);
  }
  
  if (touchPlanet(0,0,330.31)){
    image(Mars, 0, 666);
  }
  
  if (touchPlanet(0,0,271.18)){
    image(Earth, 0, 666);
  }
  
  if (touchPlanet(0,0,173.89)){
    image(Venus, 0, 666);
  }
    
  if (touchPlanet(0,0,129.5)){
    image(Mercury, 0, 666);
  }
  //Hover end
  
  
  // Black orbit line
  noFill();
  strokeWeight(0.5);
  stroke(0);
  circle(width/2, 373.075, 129.5);
  circle(width/2, 373.075, 173.89);
  circle(width/2, 373.075, 219.07);
  circle(width/2, 373.075, 271.18);
  circle(width/2, 373.075, 330.31);
  
  // White orbit line
  noFill();
  strokeWeight(0.5);
  stroke(#FFFFFF);
  circle(width/2, 373.075, 397.03);
  circle(width/2, 373.075, 478.69);
  circle(width/2, 373.075, 573.15);
  
  // Sun
  fill(0);
  circle(width/2, 373.075, 82);
  
  // Rotation speed declaration
  float speed[]= new float [8];
  for (int j= 0; j<8; j++){
    speed[j]= orbitCircumference[j]/orbitTime[j];
  }
  
  // Roation position & speed
  for (int i = 0; i < 8; i++) {
  planetX = width/2 + cos(ang[i])*((orbit[i])/2);
  planetY = 373.075 + sin(ang[i])*((orbit[i])/2);
  fill(0);
  stroke(#FFFFFF);
  circle(planetX, planetY, size[i]);
  ang[i] += 0.01*speed[i]; 
  }
  

} //End of draw do not remove!!


boolean touchPlanet(float x, float y, float planet) {
 if (dist(mouseX - width/2, mouseY - 373.075, x, y) < planet/2) {
   curPlanet[0] = x;
   curPlanet[1] = y;
   curPlanet[2] = planet;
   return true;
 }
 return false;
}



  

  
  
  




  

  
  
  
