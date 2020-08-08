//Purin Petch-in
//7.8.2020
//floating again when it go out of window and random color of balloon

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;

void setup(){
  background(255);
  size(800, 496);
  
  //random color
  red = random(0, 255);
  green = random(0, 255);
  blue = random(0, 255);
}

void draw(){
  background(255);
  fill(red, green, blue);
  
  //if last position of line go out of window then make position = height of window + radius of balloon 
  if ((position_y + (radius*0.5) + line_length) < 0){
    position_y = height + (radius*0.5);
  }
  else{
    ellipse(position_x, position_y, radius, radius);
    line(position_x, position_y + (radius*0.5), position_x, position_y + (radius*0.5) + line_length);
    position_y -= 1.0;
  }
}
