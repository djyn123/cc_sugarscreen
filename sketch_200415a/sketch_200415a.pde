int y = 1;
void  setup()
{
    size(600,600);
    background(100);
    fill(255,0,0);
    ellipse(width/2, height/2,50,50);
    
}

void draw()
{
   fill(0,0,255);
   ellipse(width/2,height/2, y, y);
   y+=1;
}
