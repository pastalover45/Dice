
// int diceNum = (int)(Math.random()*6)+1;
// // int sum = 0;  
// Die dieOne;

//int m =25;

void setup()
{	
	size(700,700);
	noLoop();
	background(0);
	totalSum();
}

void draw()
{
	
	for (int b =50; b<= 550; b+= 150){
		for(int a = 50; a< 550; a+=150){

			Die all = new Die(a,b);
					all.show();

		}

	}

}


void mousePressed()
{
	redraw();
}



class Die //models one single dice cube
{
	int myX, myY,numRoll;

	Die(int x, int y) //constructor

	{
		//variable initializations here
		
		myX = x;
		myY = y;
		numRoll = (int)(Math.random()*6)+1;
	}


	 void totalSum()
	 {

	 	sum = ("Dice Sum = " + diceRoll);


	 }



	void show()
	{
		fill(255);
		rect(myX, myY, 100,100);

		if (numRoll == 1)
		{
			fill(0);
			ellipse(myX+50, myY+50, 20,20);
			diceRoll = diceRoll +1;

		}

		if (numRoll == 2)
		{
			fill(0);
			ellipse(myX+25,myY +25,20,20);
			ellipse(myX+75,myY+75,20,20);
			diceRoll = diceRoll + 2;
		}

		if (numRoll== 3)
		{
			fill(0);
			ellipse(myX+25,myY+25,20,20);
			ellipse(myX+75,myY+75,20,20);
			diceRoll = diceRoll +3;
		}

		if (numRoll== 4)
		{
			fill(0);
			ellipse(myX+25,myY+25,20,20);
			ellipse(myX+75,myY+75,20,20);
			ellipse(myX+25,myY+75,20,20);
			ellipse(myX+75,myY+25,20,20);
			diceRoll = diceRoll +4;
		}

		if (numRoll== 5)
		{
			fill(0);
			ellipse(myX+25,myY+25,20,20);
			ellipse(myX+75,myY+75,20,20);
			ellipse(myX+25,myY+75,20,20);
			ellipse(myX+75,myY+25,20,20);
			ellipse(myX+50,myY+50,20,20);
			diceRoll = diceRoll +5;
		}

		if (numRoll== 6){
			fill(0);
			ellipse(myX+25,myY+25,20,20);
			ellipse(myX+75,myY+75,20,20);
			ellipse(myX+25,myY+75,20,20);
			ellipse(myX+75,myY+25,20,20);
			ellipse(myX+25,myY+50,20,20);
			ellipse(myX+75,myY+50,20,20);
			diceRoll = diceRoll +6;		

		}
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