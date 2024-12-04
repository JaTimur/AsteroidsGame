Star[] bg=new Star[100];
Spaceship player=new Spaceship();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup(){
  size(500,500);
  for(int n=0;n<bg.length;n++){bg[n]=new Star();}
  for(int n=0;n<11;n++){asteroids.add(new Asteroid());}
}
public void draw(){
  background(0);
  for(int n=0;n<bg.length;n++){bg[n].show();}
  for(int n=0;n<asteroids.size();n++){
    asteroids.get(n).show();
    asteroids.get(n).move();
    if(dist((float)asteroids.get(n).getCenterX(),(float)asteroids.get(n).getCenterY(),(float)player.getCenterX(),(float)player.getCenterY())<20){asteroids.remove(asteroids.get(n));}
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
