//Purin Petch-in
//7.8.2020
//Interact with mouse click

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;
boolean Change_position = true;
void setup(){
  background(255);
  size(800, 496);
  red = random(0, 255);
  green = random(0, 255);
  blue = random(0, 255);
}

void draw(){
  background(255);
  Balloon(position_x, position_y, radius, line_length);
  if (Change_position == true){
    Floating();
  }
}

void Balloon(float positionX, float positionY, float radius_balloon, float line){
  fill(red, green, blue);
  ellipse(positionX, positionY, radius_balloon, radius_balloon);
  line(positionX, positionY + (radius*0.5), positionX, positionY + (radius*0.5) +line);
}

void Floating(){
  if ((position_y + (radius*0.5) + line_length) < 0){
    position_y = height + (radius*0.5);
  }
  else{
    position_y -= 1.0;
  }
}

void mouseClicked(){
  if(Change_position == true){
    Change_position = false;
  }
  else{
    Change_position = true;
  }
}
