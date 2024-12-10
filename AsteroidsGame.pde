Star[] bg=new Star[100];
Spaceship player=new Spaceship();
ArrayList<Asteroid> asteroids=new ArrayList<Asteroid>();
ArrayList<Bullet> bullets=new ArrayList<Bullet>();
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
  for(int n=0;n<bullets.size();n++){
    bullets.get(n).show();
    bullets.get(n).move();
  }
  for(int n=0;n<bullets.size();n++){
    for(int m=0;m<asteroids.size();m++){
      if(dist((float)asteroids.get(m).getCenterX(),(float)asteroids.get(m).getCenterY(),(float)bullets.get(n).getCenterX(),(float)bullets.get(n).getCenterY())<20){
        asteroids.remove(asteroids.get(m));
        bullets.remove(bullets.get(n));
        m--;
        break;
      }
    }
  }
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
  else if(key=='e'){
    bullets.add(new Bullet(player));
  }
}
