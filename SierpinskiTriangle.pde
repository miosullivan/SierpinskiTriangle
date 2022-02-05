public void setup()
{
size(600,600);
background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
//noLoop();
}
public void draw()
{
 sierpinski(0,590,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len){
  int x2 = x + len/2;
  int y2 = y - len;
  int x3 = x + len;
  int y3 = y;
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

if (len < 10) {
  triangle(x, y, x2, y2, x3, y3);
  }
  else {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
  }
}
