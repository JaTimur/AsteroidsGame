class Star{
  private int myX,myY,size;
  public Star(){
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    size=(int)(Math.random()*3)+1;
  }
  public void show(){
    noStroke();
    fill(255);
    ellipse(myX,myY,size,size);
  }
}
