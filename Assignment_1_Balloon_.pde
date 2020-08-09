//Purin Petch-in
//7.8.2020
//make function

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;

void setup(){
  background(255);
  size(800, 496);
  red = random(0, 255);
  green = random(0, 255);
  blue = random(0, 255);
}

void draw(){
  background(255);
  
  //call function Balloon
  Balloon(position_x, position_y, radius, line_length);
  
  //call function Floating
  Floating();
}

//Type Function_name (parameter){}
void Balloon(float positionX, float positionY, float radius_balloon, float line){
  fill(red, green, blue);
  ellipse(positionX, positionY, radius_balloon, radius_balloon);
  line(positionX, positionY + (radius*0.5), positionX, positionY + (radius*0.5) +line);
}

//Type Function_name (no parameter){}
void Floating(){
  if ((position_y + (radius*0.5) + line_length) < 0){
    position_y = height + (radius*0.5);
  }
  else{
    position_y -= 1.0;
  }
}
