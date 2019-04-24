import processing.serial.*;
import processing.sound.*;
Serial myPort;
SoundFile file;
int valueFromArduino;


DragMe kid1Drag;
DragMe1 kid2Drag;
DragMe2 kid3Drag;
DragMe3 kid4Drag;
DragMe4 kid5Drag;
DragMe1 mangoDrag;
DragMe soyDrag;
DragMe milkDrag;
DragMe2 nutsDrag;
DragMe redmeatDrag;
DragMe3 eggsDrag;
DragMe4 wheatDrag;
DragMe shellfishDrag;
DragMe makeupDrag;
DragMe dogDrag;
DragMe2 pollenDrag;
DragMe hennaDrag;
DragMe3 perfumeDrag;
DragMe4 catDrag;
DragMe1 latexDrag;
PImage b;
PImage a;
PImage c;
PImage d;
PImage imgKid1;
PImage imgSoy;
PImage imgMakeup;
PImage imgKid1hives;
PImage imgKid1sick;
PImage imgKid2;
PImage imgMango;
PImage imgLatex;
PImage imgKid2hives;
PImage imgKid2sick;
PImage imgKid3;
PImage imgNuts;
PImage imgPollen;
PImage imgKid3hives;
PImage imgKid3sick;
PImage imgKid4;
PImage imgEggs;
PImage imgPerfume;
PImage imgKid4hives;
PImage imgKid4sick;
PImage imgKid5;
PImage imgWheat;
PImage imgCat;
PImage imgKid5hives;
PImage imgKid5sick;

void setup(){
  size(1440, 900);
  file = new SoundFile(this,"X.mp3");
  file.play();
  file.loop();
   printArray(Serial.list());
  // this prints out the list of all available serial ports on your computer.
  
  myPort = new Serial(this, Serial.list()[ 3 ], 9600);
 
  kid1Drag = new DragMe("kid1n.png", 0, 50); //person
  kid2Drag = new DragMe1("kid2n.png", 300, 50); //person
  kid3Drag = new DragMe2("kid3n.png", 600, 50); //person
  kid4Drag = new DragMe3("kid4n.png", 900, 50); //person
  kid5Drag = new DragMe4("kid5n.png", 1200, 50); //person
  
 mangoDrag = new DragMe1("1.png", random(50,1400), random(500,800)); //allergy
 soyDrag = new DragMe("3.png", random(50,1400), random(500,800)); //allergy
 milkDrag = new DragMe("7.png", random(50,1400), random(500,800)); //allergy
 wheatDrag = new DragMe4("0.png", random(50,1400), random(500,800)); //allergy
 redmeatDrag = new DragMe("2.png", random(50,1400), random(500,800)); //allergy
 eggsDrag = new DragMe3("6.png", random(50,1400), random(500,800)); //allergy 
 nutsDrag = new DragMe2("4.png", random(50,1400), random(500,800)); //allergy
 shellfishDrag = new DragMe("5.png", random(50,1400), random(500,800)); //allergy
  
 latexDrag = new DragMe1("4a.png", random(50,1400), random(500,800)); //allergy
 makeupDrag = new DragMe("1a.png", random(50,1400), random(500,800)); //allergy
 dogDrag = new DragMe("3a.png", random(50,1400), random(500,800)); //allergy
 catDrag = new DragMe4("0a.png", random(50,1400), random(500,800)); //allergy
 hennaDrag = new DragMe("6a.png", random(50,1400), random(500,800)); //allergy
 perfumeDrag = new DragMe3("5a.png", random(50,1400), random(500,800)); //allergy 
 pollenDrag = new DragMe2("2a.png", random(50,1400), random(500,800)); //allergy
}
void draw() {
  
while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
  }
   println(valueFromArduino);
{
if(valueFromArduino < 100){
  a = loadImage("0.jpg");
  background (a);
} else if(valueFromArduino < 180){
   c = loadImage("2.jpg");
  background (c);
} else if(valueFromArduino < 230){
   d = loadImage("3.jpg");
  background (d);
}
else{
   b = loadImage("1.jpg");
  background(b);
  
  kid1Drag.display();
  kid2Drag.display();
  kid3Drag.display();
  kid4Drag.display();
  kid5Drag.display();

  mangoDrag.update();
  mangoDrag.display();
  milkDrag.update();
  milkDrag.display();
  soyDrag.update();
  soyDrag.display();
  wheatDrag.update();
  wheatDrag.display();
  redmeatDrag.update();
  redmeatDrag.display();
  eggsDrag.update();
  eggsDrag.display();
  nutsDrag.update();
  nutsDrag.display();
  shellfishDrag.update();
  shellfishDrag.display();
  
  catDrag.update();
  catDrag.display();
  makeupDrag.update();
  makeupDrag.display();
  pollenDrag.update();
  pollenDrag.display();
  dogDrag.update();
  dogDrag.display();
  latexDrag.update();
  latexDrag.display();
  hennaDrag.update();
  hennaDrag.display();
  perfumeDrag.update();
  perfumeDrag.display();

if (kid1Drag.intersect(soyDrag)) {
    kid1Drag = new DragMe("kid1s.png", 0, 50);
  } else if (kid1Drag.intersect(makeupDrag)){
    kid1Drag = new DragMe("kid1h.png", 0, 50);
  } 
  else if (makeupDrag.intersect(soyDrag)){
    kid1Drag = new DragMe("kid1hs.png", 0, 50);
  } 
  else {
    kid1Drag = new DragMe("kid1n.png", 0, 50);
  }
  
  if (kid2Drag.intersect(mangoDrag)) {
    kid2Drag = new DragMe1("kid2s.png", 300, 50);
  } else if (kid2Drag.intersect(latexDrag)){
    kid2Drag = new DragMe1("kid2h.png", 300, 50);
  } else if (mangoDrag.intersect(latexDrag)){
    kid2Drag = new DragMe1("kid2hs.png", 300, 50);
  } 
  else {
    kid2Drag = new DragMe1("kid2n.png", 300, 50);
  }
  if (kid3Drag.intersect(nutsDrag)) {
    kid3Drag = new DragMe2("kid3s.png", 600, 50);
  }else if (kid3Drag.intersect(pollenDrag)){
    kid3Drag = new DragMe2("kid3h.png", 600, 50);
  }else if (nutsDrag.intersect(pollenDrag)){
    kid3Drag = new DragMe2("kid3hs.png", 600, 50);
  }  
  else {
    kid3Drag = new DragMe2("kid3n.png", 600, 50);
  }
  if (kid4Drag.intersect(eggsDrag)) {
    kid4Drag = new DragMe3("kid4s.png", 900, 50);
  } else if (kid4Drag.intersect(perfumeDrag)){
    kid4Drag = new DragMe3("kid4h.png", 900, 50);
  } 
  else if (eggsDrag.intersect(perfumeDrag)){
    kid4Drag = new DragMe3("kid4hs.png", 900, 50);
  } 
  else {
    kid4Drag = new DragMe3("kid4n.png", 900, 50);
  }
  if (kid5Drag.intersect(wheatDrag)) {
    kid5Drag = new DragMe4("kid5s.png", 1200, 50);
  }else if (kid5Drag.intersect(catDrag)){
    kid5Drag = new DragMe4("kid5h.png", 1200, 50);
  }  
  else if (catDrag.intersect(wheatDrag)){
    kid5Drag = new DragMe4("kid5hs.png", 1200, 50);
  } 
  else {
    kid5Drag = new DragMe4("kid5n.png", 1200, 50);
  }
  
}
}
}

void mouseReleased() {
  soyDrag.locked = false;
  soyDrag.dontMove = false;

  mangoDrag.locked = false;
  mangoDrag.dontMove = false;
  
  wheatDrag.locked = false;
  wheatDrag.dontMove = false;

  milkDrag.locked = false;
  milkDrag.dontMove = false;

  shellfishDrag.locked = false;
  shellfishDrag.dontMove = false;

  nutsDrag.locked = false;
  nutsDrag.dontMove = false;  
  
  eggsDrag.locked = false;
  eggsDrag.dontMove = false;

  redmeatDrag.locked = false;
  redmeatDrag.dontMove = false;  
  
  makeupDrag.locked = false;
  makeupDrag.dontMove = false;

  perfumeDrag.locked = false;
  perfumeDrag.dontMove = false;
  
  hennaDrag.locked = false;
  hennaDrag.dontMove = false;

  catDrag.locked = false;
  catDrag.dontMove = false;

  dogDrag.locked = false;
  dogDrag.dontMove = false;

  latexDrag.locked = false;
  latexDrag.dontMove = false;  
  
  pollenDrag.locked = false;
  pollenDrag.dontMove = false;
}
void keyReleased()
{
setup();
}
