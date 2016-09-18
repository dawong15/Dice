int result;
Die newDie;
void setup()
{
	noLoop();
	size(300,300);
	textAlign(CENTER);
}

void draw()
{
	background(0);
	int sum=0;
	for(int y=10;y<240;y+=40)
	{
		for(int x=10;x<290;x+=40)
		{
		Die newDie= new Die(x,y);
		newDie.roll();
		newDie.show();
		sum=result+sum;
		}

	}
	fill(255);
	text("Sum:" +sum,270,270);
}
void mousePressed()
{
	redraw();
}
class Die
{
	int myX, myY, sum;
	Die(int x, int y)
	{
		result=(int)((Math.random()*6)+1);

		myX=x;
		myY=y;
	}
	void roll()
	{

	}
	void show()
	{
		stroke(0);
		fill(255);
		rect(myX,myY,40,40);
		fill(0);
		if (result==1)
		{
			ellipse(myX+20,myY+20,10,10);
		}
		if (result==2)
		{
			ellipse(myX+20,myY+13,10,10);
			ellipse(myX+20,myY+27,10,10);
		}
		if (result==3)
		{
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+30,myY+30,10,10);
		}
		if (result==4)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+13,myY+27,10,10);
			ellipse(myX+27,myY+13,10,10);
			ellipse(myX+27,myY+27,10,10);
		}
		if (result==5)
		{
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+10,myY+30,10,10);
			ellipse(myX+30,myY+10,10,10);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+20,myY+20,10,10);
		}
		if (result==6)
		{
			ellipse(myX+10,myY+7,10,10);
			ellipse(myX+10,myY+34,10,10);
			ellipse(myX+20,myY+7,10,10);
			ellipse(myX+20,myY+34,10,10);
			ellipse(myX+30,myY+7,10,10);
			ellipse(myX+30,myY+34,10,10);
		}
	}
}

