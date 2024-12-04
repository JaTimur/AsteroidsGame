class Asteroid extends Floater{
  private double rotSpeed;
  private int direction1=0;
  private int direction2=0;
  public Asteroid(){
    rotSpeed=(Math.random()*11)-5;
    myColor=(255);
    myCenterX=(Math.random()*501);
    myCenterY=(Math.random()*501);
    myPointDirection=(Math.random()*361);
    corners=4;
    direction1=(int)(Math.random()*2)-1;
    direction2=(int)(Math.random()*2)-1;
    if(direction1==0){direction1=1;}
    if(direction2==0){direction2=1;}
    myXspeed=(Math.random()*2)*direction1;
    myYspeed=(Math.random()*2)*direction2;
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
}
