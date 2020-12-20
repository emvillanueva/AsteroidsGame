class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX= bob.getX();
    myCenterY= bob.getY();
    myYspeed= bob.getYspeed();
    myXspeed= bob.getXspeed();
    myPointDirection= bob.getPointDirection();
    accelerate (.7);

  }
public void show(){
  ellipse((float)myCenterX, (float)myCenterY, (float)(Math.random()*10)+4, (float)(Math.random()*10)+4);

}
public float getX(){
  return (float) myCenterX;
}
public float getY(){
  return (float) myCenterY;
}


}
