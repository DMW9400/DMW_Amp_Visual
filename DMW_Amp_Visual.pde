import processing.sound.*;
Amplitude amp;
AudioIn in;

float min, max;
float x;

void setup(){
  
  frameRate(120);
  size(800,800);
  smooth(8);


  //create an input stream which is routed into the amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this,0);
  in.start();
  amp.input(in);
  
  max = 0;
  min = 0;
}

void draw(){
  //background(215);
  println(amp.analyze());
  x++;
  float value = amp.analyze();
  float ampMove = map(value,0,1,0,height);
  float ampColor = map(value,0,1,0,255);
  
  for(int i = 0; i <200; i++);{
    fill(ampColor);
    rect(x,((height/2)+ampMove*-1),2,2);

  if(x == (width-5)){
    background(215);
    x = min;
  
  }
  }
  

  
  
  

}