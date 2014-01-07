class Aimer{ // creating object Aimer
  int r,x,y; // creating variables for the radius and x,y values
  color c; //setting variable for collor of aimer
  color c1;
  Aimer(int x, int y, int r, color c, color c1) // setting x,y values, radius and color in constructor
  {
    
    this.x = x; // creating variables lx,ly,
            //lc,and lr from the constructor equal to x,y,c,and r.
    this.y = y;
    this.c = c;
    this.c1 = c1;
    this.r = r;
  }

  void display()
  { 
   
  
   
    fill(255,0,0);
    ellipse(x,y,5,5);
    
    
    stroke(255,0,0);
    fill(0,0); // setting the inside of aimer to color c
    ellipse(x,y,r,r); // creating ellipse with r as radius and 
                                // the mouse's x and y values                        

    
   
  } 
 
  void update()
  {
    x = mouseX;
    y = mouseY;
  } 
}
  
  
class Target
{
  int r,x,y; // creating variables for the radius and x,y values and integer i
  color c; // setting color for inside of target
  Target(int x, int y, int r, color c) // setting x,y values, radius and color in constructor
   {
    
    this.x = x;         
    this.y = y;
    this.c = c;
    this.r = r;

  }


  
  
  void display()
  {

    fill(c); // setting inside of target to color c
   // setting outside border of target to blue
   
    stroke (0);
    ellipse(x,y,r,r); // creating ellipse with r as radius and 
                                // the mouse's x and y values
    fill(255); // creating white target center {
    
    ellipse(x,y,30,30);//}
   if(y>700)    //setting time of target 1 before disappearing
    {
      x=(int)random(700); // randomly choosing number between 1 and 100
      y = -60;
    }
   else
   {
    y++;
   }
       
  }

  }
class Target1
{
  int r,x,y; // creating variables for the radius and x,y values and integer i
  color c; // setting color for inside of target
  Target1(int x, int y, int r, color c) // setting x,y values, radius and color in constructor
   {
    
    this.x = x;         
    this.y = y;
    this.c = c;
    this.r = r;

  }


  
  
  void display()
  {

    fill(c); // setting inside of target to color c
    
    ellipse(x,y,r,r); // creating ellipse with r as radius and 
                                // the mouse's x and y values
    fill(255); // creating white target center {
 
    ellipse(x,y,30,30);//}
   if(x>850)    //setting time of target 1 before disappearing
    {
      y=(int)random(700); // randomly choosing number between 1 and 100
      x = -60;
    }
   else
   {
    x++;
   }
       
  }

  }



Target[] target;//importing class Target1
Target1[] target1;
Aimer aim;
PImage b; // importing image as variable b
int szX = 833;
int szY = 620;
int score;
void setup()
{
  size(szX,szY); // size of window
  ellipseMode(CENTER);
 
  color cr = color(255,0,0); //inside color (transparent) of aimer
  color cr1 = color(0,0,255);
  color cr2 = color(0,255,0);
  color cr3 = color(100,0,100);
  color cr4 = color(50,105,100);
  color cr5 = color(50,75,100);
  color cr6 = color(255,0,255);
  color cr7 = color(100,55,100);
  color cr8 = color(60,200,75);
  color cr9 = color(90);
  
  target = new Target[4];
  target1 = new Target1[4];
  target[0] = new Target((int)random(szX),(int)random(szY),80,cr1); // constructor of tar1
  target[1] = new Target((int)random(szX),(int)random(szY),80,cr2); // constructor of tar
  target[2] = new Target((int)random(szX),(int)random(szY),80,cr3); // constructor of tar1
  target[3] = new Target((int)random(szX),(int)random(szY),80,cr4);
   target1[0] = new Target1((int)random(szX),(int)random(szY),80,cr5); // constructor of tar1
  target1[1] = new Target1((int)random(szX),(int)random(szY),80,cr6); // constructor of tar
  target1[2] = new Target1((int)random(szX),(int)random(szY),80,cr7); // constructor of tar1
  target1[3] = new Target1((int)random(szX),(int)random(szY),80,cr8);
  aim = new Aimer(szX/2,szY/2,20,cr,cr9); // constructor of aim

 
 

  b = loadImage("background.png"); // loading image of background
  


}

  




  void draw()
  { 
   
    background(b); // setting background to b
   
    
   
  
    for(int i = 0; i < target.length; i++)
    {
      if(mousePressed && dist(target[i].x,target[i].y,aim.x,aim.y) <= 30)
      {
       target[i].y = 701;
       score = 10+score;
      } 
       if(mousePressed && dist(target1[i].x,target1[i].y,aim.x,aim.y) <= 30)
      {
       target1[i].x = -701;
       score = 10+score;
      } 
  
       target[i].display();
       target1[i].display();
    }
    
     textSize(32);
     fill(255,0,0);
     text(score, 650, 50); 
     fill(255,0);
   aim.display(); //drawing the circle
   aim.update();  
 
  
  }
  
  
