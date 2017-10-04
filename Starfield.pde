NormalParticle [] ball;
void setup()
{
	size(500,500);
	ball = new NormalParticle[5000];
	for(int i = 0; i < ball.length; i++)
		{
			ball[i] = new NormalParticle();
		}
}
void draw()
{
	for(int i = 0; i < ball.length; i++)
	{
		ball[i].move();
		ball[i].show();
	}
}
class NormalParticle
{
	double myX, myY,mySpeed, myAngle;
	int myColor;
 	NormalParticle()
 	{
 		myX = 0;
 		myY = 0;
 		mySpeed = 10;
 		myAngle = Math.PI*2*Math.random();
 		myColor = 255;
 	}
 	void move()
 	{
 	myX = myX + Math.cos(myAngle*mySpeed);
 	myY = myY + Math.sin(myAngle*mySpeed);
 	}

 	void show()
 	{
 		
 		fill(myColor);
 		ellipse((float)myX,(float)myY,10,10);
 	}
    
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

