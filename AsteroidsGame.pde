ArrayList <AsteroidClass> joe= new ArrayList <AsteroidClass>();
Spaceship bob= new Spaceship();
stars[] jill= new stars[300];
ArrayList <Bullet> bill= new ArrayList <Bullet>();
void mousePressed(){  redraw();}
public void wait(int ms)
{
    try
    {
        Thread.sleep(ms);
    }
    catch(InterruptedException ex)
    {
        Thread.currentThread().interrupt();
    }
}
public void setup(){
  size(500,500);
  for(int i=0; i< jill.length; i++)
  {
    jill[i]= new stars();
  }
  for(int i=0; i<7; i++){
    joe.add(new AsteroidClass());
  
  }


}

public void addAsteroids(){
wait(10);
joe.add(new AsteroidClass());

}
public void draw()
{
  background(0);
//void mousePressed(){  redraw();}
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
  addAsteroids();
}

for(int i=0; i<bill.size(); i++){
  for (int e=0; e<joe.size(); e++){
  float dis= dist(bill.get(i).getX(),bill.get(i).getY(), joe.get(e).getX(),joe.get(e).getY());
      if(dis<20){
      joe.remove(e); bill.remove(i); break;
                }
  }
}
for(int i=0; i<joe.size(); i++){
  float dis= dist(joe.get(i).getX(),joe.get(i).getY(), bob.getX(),bob.getY());
  if (dis<10){
  while(1==1){
  fill(0);
  stroke(255,0,0);
  bob.destroyed();
  bob.show();
    if(key =='w'){
  }
  if(key=='s'){
  }
  if(key == 'd'){
  }
  if(key == 'a'){
  }
  if(key == 'e'){
  }
  if(key == ' '){
  }

  }}
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

