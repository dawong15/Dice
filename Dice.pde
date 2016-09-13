int result=0;
void setup()
{
	background(255);
	size(300,300);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	int total;
	
	for(int x=5;x<300;x=x+60)
	{
		for(int y=5; y<300;y=y+60)
		{
		Die newDie= new Die(x,y);
		newDie.roll();
		newDie.show();
	}
	result=(int)(Math.random()*6)+1);
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	Die(int x, int y)

	{
		roll();
		myX=x;
		myY=y;


	}
	

	{
		//variable initializations here
	}
	void roll()
	{
		
	noStroke();
	fill(0,0,255);
	}
	void show()
	{
		noStroke();
		fill(0,128,255);
		rect(myX,myY,50,50);
		fill(255);

		if (result==1)
			ellipse(10,10,5,5)

	}

}
