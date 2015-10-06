Snowflake [] snow;
PImage background;
//PImage flake;
void setup()
{
  
  background= loadImage("https://thepalladiantraveler.files.wordpress.com/2012/11/p3102970_cropped_resize.jpg");
  snow= new Snowflake[250]; 
  for(int i=0; i<snow.length; i++)
  {

   
   // flake = loadImage("http://www.clipartlord.com/wp-content/uploads/2014/10/snowflake7.png");
    snow[i]= new Snowflake();
  }
  size(600,500);  
  image(background,0,0,600,500);
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
    fill(255,0,0);
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
    y=(int)(Math.random()*500+1);
    isMoving = true;
    //class member variable initializations
  }
  void show()
  {

    noStroke();
    fill(255,255,255,0);
   ellipse(x,y,7,7); //image(flake,x,y,30,30);
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
   
  }
  void erase()
  {
    fill(0,0,0,5);
    ellipse(x,y,8,8);//your code here*/
  }
  void move()
  {
    if (isMoving==true)
    {
      y++;
    }
    //your code here
  }
  void wrap()
  {
    if(y>500)
    {
      y=0;
      x=(int)(Math.random()*600);//your code here
    }
  }
}


