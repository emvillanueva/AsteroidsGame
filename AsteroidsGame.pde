ArrayList <AsteroidClass> joe= new ArrayList <AsteroidClass>();
Spaceship bob= new Spaceship();
stars[] jill= new stars[300];
ArrayList <Bullet> bill= new ArrayList <Bullet>();
int hits=0;
int asteroidNum=8;

public void setup(){
  size(500,500);
  for(int i=0; i< jill.length; i++)
  {
    jill[i]= new stars();
  }
  for(int i=0; i<asteroidNum; i++){
    joe.add(new AsteroidClass());
  
  }


}


public void draw()
{
  background(0);
  for (int i=0; i<jill.length; i++)
  {
    jill[i].show();
  }
  for (int i=0; i<joe.size(); i++){
    joe.get(i).show();
    joe.get(i).move();
    
  }
  bob.show();
  bob.move();
  for (int i=0; i<bill.size(); i++){
  bill.get(i).move();
  bill.get(i).show();
//addAsteroids();
}

for(int i=0; i<bill.size(); i++){
  for (int e=0; e<joe.size(); e++){
  float dis= dist(bill.get(i).getX(),bill.get(i).getY(), joe.get(e).getX(),joe.get(e).getY());
      if(dis<20){
      joe.remove(e); bill.remove(i); break;
                }
     
  }
}

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
  if(key == ' '){
  
    bill.add(new Bullet(bob));
  }
}

