//Purin Petch-in
//7.8.2020
//Make Balloon with class

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;
boolean Change_position = true;

//declare like a variable (Type variable_name)
Balloon b1, b2, b3, b4;

void setup(){
  background(255);
  size(800, 496);
  b1 = new Balloon();
  b2 = new Balloon(60, 40, 50, 110);
  b3 = new Balloon(80);
  b4 = new Balloon(100, 100);
}

void draw(){
  background(255);
  b1.build();
  b2.build();
  b3.build();
  b4.build();
  if (Change_position == true){
    b1.Floating();
    b2.Floating();
    b3.Floating();
    b4.Floating();
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
