 Die one;
 void setup()
  {
      noLoop();
      size(500, 550);
      textAlign(CENTER, CENTER);
  }
  void draw()
  {
     background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     int sum = 0;
     for(int y = 10; y <= 500; y = y + 100) //5 rows
     {
        for(int x = 10; x <= 500; x = x + 100) //5 columns
        {
           noStroke();
           one = new Die(x, y);
           one.show();
           one.roll();
           
           if(one.side <= 6)
             sum = sum + one.side;
        }
     }
     textSize(24);
     text("You rolled a sum of " + sum + "!", 250, 525);
  
  }
  void mousePressed()
  {
      redraw(); 
  }
  class Die 
  {
      int side, myX, myY, r;
      
      Die(int x, int y) //constructor
      {
          side = (int)(Math.random()*6)+1;
          myX = x;
          myY = y;
      }
      void roll()
      {
          r = 15; //radius size of dots
          if (side == 1)
          {
            fill(0);
            ellipse(myX + 40, myY + 40, r, r);
          }
          if (side == 2)
          {
            fill(0);
            ellipse(myX+15, myY+15, r, r);
            ellipse(myX + 65, myY + 65, r, r);
          }
          if (side == 3)
          {
            fill(0);
            ellipse(myX+15, myY+15, r, r);
            ellipse(myX + 40, myY + 40, r, r);
            ellipse(myX + 65, myY + 65, r, r);
          }
          if (side == 4)
          {
            fill(0);
            ellipse(myX+15, myY+15, r, r);
            ellipse(myX+65, myY+15, r, r);
            ellipse(myX+15, myY+65, r, r);
            ellipse(myX+65, myY+65, r, r);
          }
          if (side ==5)
          {
            fill(0);
            ellipse(myX+15, myY+15, r, r);
            ellipse(myX+65, myY+15, r, r);
            ellipse(myX+40, myY+40, r, r);
            ellipse(myX+15, myY+65, r, r);
            ellipse(myX+65, myY+65, r, r);
          }
          if (side == 6)
          {
            fill(0);
            ellipse(myX+15, myY+15, r, r);
            ellipse(myX+65, myY+15, r, r);
            ellipse(myX+15, myY+40, r, r);
            ellipse(myX+65, myY+40, r, r);
            ellipse(myX+15, myY+65, r, r);
            ellipse(myX+65, myY+65, r, r);
          }
      } 
      void show()
      {  
         int size = 80; //dice's size
         fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); //dice colors
         rect(myX, myY, size, size, 15);
      }
  }