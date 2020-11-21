class stars{
  private int myX, myY;
  
  public stars(){
  myX=(int)(Math.random()*500);
  myY=(int)(Math.random()*500);
  }
  public void show()
  {
    fill((int)(Math.random()*230)+20,(int)(Math.random()*230)+20,(int)(Math.random()*230)+20);
    stroke((int)(Math.random()*230)+20,(int)(Math.random()*230)+20,(int)(Math.random()*230)+20);
    ellipse(myX,myY,3,3);
  }
}
