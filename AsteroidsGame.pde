Star[] bg=new Star[100];
Spaceship player=new Spaceship();
public void setup(){
  size(500,500);
  for(int n=0;n<bg.length;n++){
    bg[n]=new Star();
  }
}
public void draw(){
  background(0);
  for(int n=0;n<bg.length;n++){
    bg[n].show();
  }
  player.show();
  player.move();
}
public void keyPressed(){
  if(key=='s'){
    player.hyperspace();
  }
  else if(key=='w'){
    player.accelerate(0.5);
  }
  else if(key=='a'){
    player.turn(-5);
  }
  else if(key=='d'){
    player.turn(5);
  }
}
