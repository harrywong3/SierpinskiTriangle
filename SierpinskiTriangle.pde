public void setup()
{
size(500,500);
background(255);
}
public void draw()
{
 fill(0);
 if(mouseX<100)
 {background(255);
 triangle(50,450,450,450,250,50);}
 else if(mouseX>100 && mouseX<200)
 {background(255);
 sierpinski(50,450,400,200);}
 else if(mouseX>200 && mouseX<300)
 {background(255);
 sierpinski(50,450,400,100);}
 else if(mouseX>300 && mouseX<400)
 {background(255);
 sierpinski(50,450,400,50);}
 else if(mouseX>400 && mouseX<500)
 {background(255);
 sierpinski(50,450,400,25);
 text(":D",245,330);}
 
}
public void sierpinski(int x, int y, int len, int limit) 
{
 if(len <= limit) triangle(x,y,x+len,y,x+len/2,y-len);
 else {
   sierpinski(x,y,len/2, limit);
   sierpinski(x+len/2,y,len/2, limit);
   sierpinski(x+len/4,y-len/2,len/2, limit);
 }
}
