Snowflake [] snow;

void setup()
{
  
  
  snow= new Snowflake[250]; 
  for(int i=0; i<snow.length; i++)
  {

   
   
    snow[i]= new Snowflake();
  }
  size(600,500);  
  
  background(0);
}
void draw()
{
  mouseDragged();

  for(int i=0; i<snow.length; i++)
 {

  
  snow[i].erase();
  snow[i].lookDown();
  snow[i].move();
  snow[i].wrap();
  snow[i].show();
}

}
void mouseDragged()
{
  if (mousePressed==true)
  {
    fill(239,247,252);
   ellipse(mouseX,mouseY,20,20);//your code here
  }
}

class Snowflake
{

  int x,y;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*600+1);
    y=(int)(Math.random()*400)-400;
    isMoving = true;
    
    
  }
  void show()
  {
   
    noStroke();
    fill(255);
    ellipse(x,y,10,10);
   
  }
  void lookDown()
  {
    if(y<0 || y>500)
    {
      isMoving = false;
    }
    else 
    {
      isMoving = true;
    }
    if(get(x+8,y+8)== color(239,247,252))
    {
      isMoving=false;
    }
    else 
    {
      isMoving = true;
    }
   
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,12,12);
  }
  void move()
  {
    if (isMoving==true)
    {
      y++;
    }
    
  }
  void wrap()
  {
    if(y>500)
    {
      y=(int)(Math.random()*400)-400;
      x=(int)(Math.random()*600);
    }
  }
}


