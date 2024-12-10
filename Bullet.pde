class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX=ship.getCenterX();
    myCenterY=ship.getCenterY();
    myXspeed=ship.getXspeed();
    myYspeed=ship.getYspeed();
    myPointDirection=ship.getPointDirection();
    accelerate(2);
  }
  public void show (){             
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }   
}
