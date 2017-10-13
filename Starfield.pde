Particle [] ball;
void setup()
{
	size(500,500);
	ball = new Particle[5000];
	for(int i = 0; i < ball.length; i++)
		{
			ball[i] = new NormalParticle();
			ball[2] = new OddballParticle();
			ball[1] = new JumboParticle();
			ball[9] = new JumboParticle();

		}
}
void draw()
{
	background(0);
	for(int i = 0; i < ball.length; i++)
	{
		ball[i].move();
		ball[i].show();
	}
}
class NormalParticle implements Particle
{
	double myX, myY,mySpeed, myAngle;
	int myColor;
 	NormalParticle()
 	{
 		myX = 250;
 		myY = 250;
 		mySpeed = (int)(Math.random()*19);
 		myAngle = Math.PI*3*Math.random();
 		myColor = 255;
 	}
 	public void move()
 	{
 	myX = myX + Math.cos(myAngle*mySpeed);
 	myY = myY + Math.sin(myAngle*mySpeed);
 	}

 	public void show()
 	{
 		
 		fill(myColor);
 		ellipse((float)myX,(float)myY,10,10);
 	}
    
}
interface Particle
{
	public void move();
	public void show();

}
class OddballParticle implements Particle
{
	int myColor, myX, myY;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
	}
	public void move()
	{
		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
	}
	
	public void show()
	{
		fill(0,255,0);
		ellipse(myX,myY,10,10);
		fill(0,0,255);
		ellipse(myX+(int)(Math.random()*3)-1,myY,20,20);
		ellipse(myX+(int)(Math.random()*3)-1,myY,20,20);
	}

}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		myColor = color(255,0,0);
		
		myX = 250;
		myY = 250;
		
	}

	public void show()
	{
		fill(255,0,233);
		ellipse((float)myX,(float)myY,60,60);
	}
}

