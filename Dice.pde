void setup()
{
  size(500, 600);
  noLoop();
}
void draw()
{
  background(0, 125, 36, 25);
  int sum=0;

  for (int y =10; y<400; y=y+150)
    for (int x=10; x<400; x=x+150)

    {
      Die bob = new Die(x, y);
      bob.show();
      sum= sum+bob.myDots;
    }
text(sum,450,450);

}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{

  int myX, myY, myDots;
  Die(int x, int y) //constructor
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    myDots= (int)(Math.random()*6+1);
  }
  void show()
  {
    rect(myX, myY, 100, 100);
    if (myDots==1)
      ellipse(myX+50, myY+50, 10, 10);
    if (myDots==2) {
      ellipse(myX+25, myY+85, 10, 10);
      ellipse(myX+75, myY+20, 10, 10);
    }
    if (myDots==3) {
      ellipse(myX+25, myY+85, 10, 10);
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    if (myDots==4) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
    }
    if (myDots==5) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }                                                                      
    if (myDots==6) {
      ellipse(myX+25, myY+85, 10, 10);  
      ellipse(myX+75, myY+85, 10, 10);
      ellipse(myX+25, myY+20, 10, 10);  
      ellipse(myX+75, myY+20, 10, 10);
      ellipse(myX+25, myY+50, 10, 10);
      ellipse(myX+75, myY+50, 10, 10);
    }
  }
}
{
}
