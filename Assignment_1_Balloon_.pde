//Purin Petch-in
//7.8.2020
//Use array of object

float position_x = 200, position_y = 400, radius = 50, line_length = 100, red, green, blue;
int Balloon_quantity = 6;
boolean Change_position = true;

Balloon[] ball;

void setup(){
  background(255);
  size(800, 496);
  ball = new Balloon[Balloon_quantity];
  for(int i = 0; i < Balloon_quantity; i++){
    ball[i] = new Balloon();
    ball[i].build();
  }
}

void draw(){
  if (Change_position == true){
    background(255);
    for(int i = 0; i < Balloon_quantity; i++){
      ball[i].build();
      ball[i].Floating();
    }
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
