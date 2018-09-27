Die one;
void setup()
{
	noLoop();
	size(600, 600);
}
void draw()
{
	rect(100, 200, 10, 10, 7);
	background(0,0);
	Die.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int x, y;
	
	Die(int x, int y) //constructor
	{
		for (x = 0; x = 600; x = x + 200);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		for(y = 200; y <= 600; y+= 200)
		{
			for(x = 200; x <= 600; x += 200)
			{
				rect(100, 100, 20, 20, 7);
			}
			System.out.println();
		}

	}
}
