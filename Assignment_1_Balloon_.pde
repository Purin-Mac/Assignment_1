//Purin Petch-in
//7.8.2020
//make balloon and make it floating

//declare variable to use in code
int position_x = 200, position_y = 400, radius = 50, line_length = 100;

void setup(){
  background(255);
  size(800, 496);
}

//draw use to run code with loop
void draw(){
  background(255);
  fill(0);
  
  //ellipse(positionx, position, width, height)
  ellipse(position_x, position_y, radius, radius);
  
  //make line with line(x1, y1, x2, y2)
  line(position_x, position_y + (radius*0.5), position_x, position_y + (radius*0.5) + line_length);
  
  //change positiony of ballon and line every round to make it floating
  position_y -= 1.0;
}
