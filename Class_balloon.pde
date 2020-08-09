//class name balloon
class Balloon{
  float position_x, position_y, radius, line_length = 100, red, green, blue;
  
  //when call with no parameter
  Balloon(){
    position_x = 200;
    position_y = 400;
    radius = 50;
    line_length = 100;
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);
  }
  
  //make a balloon
  void build(){
    fill(red, green, blue);
    ellipse(position_x, position_y, radius, radius);
    line(position_x, position_y + (radius*0.5), position_x, position_y + (radius*0.5) + line_length);
  }
}
