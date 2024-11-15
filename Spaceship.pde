class Spaceship extends Floater{
  public Spaceship(){
    corners=5;
    xCorners=new int[]{-10,-15,-10,10,10};   
    yCorners=new int[]{10,0,-10,0,0};
    myColor=color(100,125,150);
    myCenterX=myCenterY=250;
    myXspeed=myYspeed=0;
    myPointDirection=0;
  }
  public void hyperspace(){
    myXspeed=myYspeed=0;
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
    myPointDirection=Math.random()*360;
  }
}
