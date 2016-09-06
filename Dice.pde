
int diceNum = (int)(Math.random()*6)+1;
int sum = 0;  


void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{


	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX=x;
		mY=y;
	}

	void roll()
	{

	if(diceNum == 6)
		{
			sum = sum +6;
		}

	if(diceNum == 5)
		{
			sum = sum +5;
		}

	if(diceNum == 4)
		{
			sum = sum +4;
		}

	if(diceNum == 3)
		{
			sum = sum +3;
		}
	if(diceNum == 2)
		{
			sum = sum +2;
		}
		
	else (diceNum == 1)
		{
			sum = sum +1;
		}


	}


	void show()
	{
		fill(255);
		rect(myX, myY, 50,50);
		text()


	}
}


// Complete the draw() function first. For now it should:
// clear the screen
// declare and initialize one instance of the Die class
// Call the show() function for that Die (even though we won't see anything yet)
// Now complete the Die class. You will need to complete the show() function that displays the die to the screen. Notice that the constructor takes arguments. We'll use those arguments to position the individual die cubes. Don't worry about the dots at first, just get the shape of the dice on the screen for now. Once you like the shape of your die, go back to show() and add some ifs to check how many dots you need to put on the die. Start by "forcing" the die to always roll a one. Check to see that you can get one dot where it is suppose to be, and move on to two, and so on. If you are clever, you can combine some of the ifs and avoid duplicate code.
// Now, use nested loops to display at least nine instances of the Die class. This is the power of OOP. It's not that much more work to make 1000 dice as it is to make one. Make sure the dots are on the dice. Your show() function will need to position the dots by adding some small amount to the x and y coordinates of the rect() of the Die
// Finally, add code to the draw() function so that your program displays the total for the roll to the screen.
// Have fun and be creative. Your dice program doesn't have to look or work like any other.