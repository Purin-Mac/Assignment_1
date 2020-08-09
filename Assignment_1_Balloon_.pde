//Purin Petch-in
//7.8.2020
//Make Balloon with class

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;
boolean Change_position = true;

//declare like a variable (Type variable_name)
Balloon b1;

void setup(){
  background(255);
  size(800, 496);
  
  //Declare and construct two objects b1 from the class Balloon 
  b1 = new Balloon();
}

void draw(){
  background(255);
  
  //use Class Balloon method
  b1.build();
  
  /*if (Change_position == true){
    Floating();
  }*/
}

/*void Floating(){
  if ((position_y + (radius*0.5) + line_length) < 0){
    position_y = height + (radius*0.5);
  }
  else{
    position_y -= 1.0;
  }
}*/

void mouseClicked(){
  if(Change_position == true){
    Change_position = false;
  }
  else{
    Change_position = true;
  }
}
