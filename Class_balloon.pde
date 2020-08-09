//class name balloon
class Balloon{
  float position_x, position_y, radius, line_length = 100, red, green, blue, speed;
  
  //when call with no parameter
  Balloon(){
    position_x = random(0, width);
    position_y = height;
    radius = random(50, 150);
    line_length = random(100, height/3);
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);
  }
  
  //when call with one parameter
  Balloon(int r){
    position_x = random(width);
    position_y = height;
    radius = r;
    line_length = random(100, height/3);
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);
  }
  
  //when call with 2 parameter
  Balloon(int r, int line){
    position_x = random(width);
    position_y = height;
    radius = r;
    line_length = line;
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);
  }
  
  //when call with four parameter
  Balloon(int x, int y, int r, int line){
    position_x = x;
    position_y = y;
    radius = r;
    line_length = line;
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
  
  void Floating(){
    if ((position_y + (radius*0.5) + line_length) < 0){
      position_y = height + (radius*0.5);
    }
    else{
      
      //Re-maps a number of radius from 150 to 50 to 0.5 to 1.5.
      speed = map(radius, 150, 50, 0.5, 1.5);
      position_y -= speed;
    }
  }
}
