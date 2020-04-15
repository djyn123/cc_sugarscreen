
class Ball
{
   PVector pos;
   int size;
   int dir_x = 1;
   int dir_y = 1;
   Ball(int _size)
   {

      pos = new PVector(height/2,width/2);
      size = _size;
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
          pos.x -= 5;
          dir_x *= -1;
      }
      if(pos.y >= (height - radius -1) || pos.y <= radius)
      {
          pos.y -= 5;
          dir_y *= -1;
          
      }
   }  
   void display()
   {
    // background(100);
     fill(0,0,255);
     ellipse(pos.x,pos.y,size,size);
   }
   
}

Ball ball;
void setup()
{
  size(600,600);
  background(100);
  ball = new Ball(50);
  print(ball.pos.x,ball.pos.y);
}
int i = 4;
void draw()
{ 
  ball.display();
  ball.move(i);
  ball.stayIn();

}
