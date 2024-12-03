class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed=(Math.random()*11)-5;
    myColor=(255);
    myCenterX=(Math.random()*501);
    myCenterY=(Math.random()*501);
    myXspeed=myYspeed=(Math.random()*3);
    myPointDirection=(Math.random()*360);
    corners=4;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=-6+(int)(Math.random()*7)-4;
    yCorners[0]=-6+(int)(Math.random()*7)-4;
    xCorners[1]=-6+(int)(Math.random()*7)-4;
    yCorners[1]=6+(int)(Math.random()*7)-4;
    xCorners[2]=6+(int)(Math.random()*7)-4;
    yCorners[2]=6+(int)(Math.random()*7)-4;
    xCorners[3]=6+(int)(Math.random()*7)-4;
    yCorners[3]=-6+(int)(Math.random()*7)-4;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
