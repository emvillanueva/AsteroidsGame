class AsteroidClass extends Floater
{
   private double rotSpeed;
  public AsteroidClass(){
    rotSpeed=Math.random()*2-1;
    corners=6;
     xCorners= new int[corners];
     yCorners= new int[corners];
     xCorners[0]= -10;
     yCorners[0]=-8;
     xCorners[1]=8;
     yCorners[1]=-4;
     xCorners[2]=12;
     yCorners[2]=0;
     xCorners[3]=6;
     yCorners[3]=9;
     xCorners[4]=-9;
     yCorners[4]=7;
     xCorners[5]=-7;
     yCorners[5]=-1;
     
     myColor= color(255);
     myCenterX = myCenterY= (float)(Math.random()*200)+20;
     myXspeed= Math.random()*2-1;
     myYspeed= Math.random()*2-1;
     myPointDirection=0;
    
  }
  public void move(){
  turn(rotSpeed);
  super.move();
  
  }
  public float getX(){
  return (float)myCenterX;
}
public float getY(){
  return (float)myCenterY;
}

}
