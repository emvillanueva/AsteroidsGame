Spaceship bob= new Spaceship();
stars[] jill= new stars[300];
public void setup(){
  size(500,500);
  for(int i=0; i< jill.length; i++)
  {
    jill[i]= new stars();
  }
}
public void draw()
{
  background(0);

  for (int i=0; i<jill.length; i++)
  {
    jill[i].show();
  }
  bob.show();
  bob.move();
}  
  

public void keyPressed()
{
  if(key =='w'){
  bob.accelerate(.3);
  }
  if(key=='s'){
  bob.accelerate(-0.3);
  }
  if(key == 'd'){
  bob.turn(5);
  }
  if(key == 'a'){
  bob.turn(-5);
  }
  if(key == 'e'){
  bob.hyperspace();
  }
}
