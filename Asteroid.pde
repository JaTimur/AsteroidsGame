class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    super();
    rotSpeed=(Math.random()*11)-5;
    corners=4;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=-4+(int)(Math.random()*4)-3;
    yCorners[0]=-4+(int)(Math.random()*4)-3;
    xCorners[1]=-4+(int)(Math.random()*4)-3;
    yCorners[1]=4+(int)(Math.random()*4)-3;
    xCorners[2]=4+(int)(Math.random()*4)-3;
    yCorners[2]=4+(int)(Math.random()*4)-3;
    xCorners[3]=4+(int)(Math.random()*4)-3;
    yCorners[3]=-4+(int)(Math.random()*4)-3;
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
