class Spaceship extends Floater  
{   
  public Spaceship(){
  corners=3;  //the number of corners, a triangular floater has 3   
  xCorners= new int[corners];   
  yCorners= new int[corners]   ;
  xCorners[0]=-8;
  yCorners[0]=-8;
  xCorners[1]=16;
  yCorners[1]=0;
  xCorners[2]=-8;
  yCorners[2]=8;
  
  myColor= color(255,255,255)  ; 
  myCenterX= myCenterY=250; //holds center coordinates   
  myXspeed=myYspeed=0; //holds the speed of travel in the x and y directions   
  myPointDirection=(int)(Math.random()*360); //holds current directi
    }
public void hyperspace(){
  myXspeed = 0;
  myYspeed=0;
  myCenterX=(int)(Math.random()*300);
  myCenterY=(int)(Math.random()*300);
  
}
public float getX(){
  return (float)(myCenterX);
}
public float getY(){
  return (float)(myCenterY);
}
public float getYspeed(){
  return (float)myYspeed;
}
public float getXspeed(){
  return (float)myXspeed;
}
public float getPointDirection(){
  return (float)myPointDirection;
}
}
