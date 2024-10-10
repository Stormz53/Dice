Die one;
  int sum = 0;
void setup()
{
  size (1000, 1000);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  //your code here
  background(150);
  strokeWeight(3);
  fill(255);
    rect(450,15,100, 40);
  
  for (int y = 70; y < 950; y += 70)
  {
    for (int x = 10; x <950; x += 70)
    {
      one = new Die( x, y);
      one.roll();
     one.show();
    }
  }
         text("sum = " + sum, 500, 40);
}
void mousePressed()
{
  sum = 0;
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {

    myX = x;
    myY = y;
    //variable initializations here
  }
   void show()
  {
    int centerX= myX + 30;
    int centerY = myY + 30;
    strokeWeight(5);
      rect (myX, myY, 60, 60);
      divots(centerX, centerY);
    //your code here
  }
  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
    sum += numDots;
  }//your code here
  void divots(int centerX, int centerY)
  {
    centerX = myX+30;
    centerY = myY+30;
    fill(255);
    rect (myX, myY, 60, 60);
    if (numDots == 1) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse(centerX, centerY, 10, 10);
    }
    if (numDots == 2) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse (centerX + 10, centerY + 10, 10, 10);
      ellipse (centerX - 10, centerY - 10, 10, 10);
    }
    if (numDots == 3) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse (centerX + 15, centerY +15, 10, 10);
      ellipse (centerX, centerY, 10, 10);
      ellipse (centerX - 15, centerY - 15, 10, 10);
    }
    if (numDots == 4) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse (centerX + 12, centerY + 10, 10, 10);
      ellipse (centerX - 12, centerY + 10, 10, 10);
      ellipse (centerX + 12, centerY - 10, 10, 10);
      ellipse (centerX - 12, centerY - 10, 10, 10);
    }
    if (numDots == 5) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse (centerX - 15, centerY + 15, 10, 10);
      ellipse (centerX + 15, centerY + 15, 10, 10);
      ellipse (centerX + 15, centerY - 15, 10, 10);
      ellipse (centerX - 15, centerY - 15, 10, 10);
      ellipse (centerX, centerY, 10, 10);
    }
    if (numDots == 6) {
      fill(255);
      strokeWeight(5);
      fill(0);
      strokeWeight(1);
      ellipse (centerX - 10, centerY - 15, 10, 10);
      ellipse (centerX - 10, centerY, 10, 10);
      ellipse (centerX - 10, centerY + 15, 10, 10);
      ellipse (centerX + 10, centerY - 15, 10, 10);
      ellipse (centerX + 10, centerY, 10, 10);
      ellipse (centerX + 10, centerY +15, 10, 10);
      
      noLoop();
    }
  }

}
