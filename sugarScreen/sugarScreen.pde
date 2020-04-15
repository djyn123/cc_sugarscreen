
class Ball
{
   PVector pos;
   int size;
   int dir_x;
   int dir_y;
   color couleur;
   Ball(int _size,color clr)
   {
      size = _size; 
      float radius = size/2;
      pos = new PVector(int(random(radius,height-radius)),int(random(radius,width-radius)));
      couleur = clr;
     
      while(!(dir_x != 0 && dir_y != 0))
      {
          dir_x = int(random(-3,4));
          dir_y = int(random(-3,4));
      }
      println(dir_x,dir_y);
 }
   
   void move(int spd)
   {  
     pos.x+= int(random(1,spd))*dir_x;
     pos.y+= int(random(1,spd))*dir_y;  
   }
   
   void stayIn()
{
      float radius = size/2;
      if(pos.x >= (width - radius - 1) || pos.x <= radius )
      {    
          dir_x *= -1;
          pos.x += int(random(1,10))*dir_x;
      }
      if(pos.y >= (height - radius -1) || pos.y <= radius)
      {  
          dir_y *= -1;
          pos.y += int(random(1,10))*dir_y;   
      }
   }  
   void display()
   {
     stayIn();
     fill(couleur);
     ellipse(pos.x,pos.y,size,size);
   }
   
}

Ball balls[] = new Ball[1000];
 
void setup()
{
  size(1000,600);
  background(100);
  for(int i = 0;i < balls.length;i++)
  {
      balls[i] = new Ball(int(random(1,15)),color(int(random(1,255)),int(random(1,255)),int(random(1,255))));
  }

}

void draw()
{ 
  background(100);
  for(int i = 0; i < balls.length;i++)
  {
      balls[i].display();
      balls[i].move(6);
      balls[i].stayIn();
  }
}
