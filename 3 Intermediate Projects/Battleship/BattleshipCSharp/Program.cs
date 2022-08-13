using System;
using System.Data;

namespace Battleship
{
    class Program
    {
        static void Main(string[] args)
        {
            // BROKE THE HELL OUT OF THIS CODE SOMEWHERE WHEN SWITCHING ROW & COLUMN VARIABLES, try to do from scratch...
            // would like to work out translate array, userGuess array, and try to put some of these in functions!
            // work on randomization?
            // ASCII table for translation...?

            //char letter = 'j';
            //Console.WriteLine(letter);      // prints out j
            //Console.WriteLine((int)106);    // ascii for lowercase j, prints out j
            //Console.WriteLine(93);          // prints out 93
            //Console.WriteLine((char)93);    // prints out ] since 93 is the ascii location for "]"
            //Console.WriteLine((char)('z' - 5)); // can use this to simplify column/row issue below, letters can be numbers in ascii 


            int[,] grid = new int[10, 10];

            grid[0, 3] = 1;
            grid[1, 3] = 1;
            grid[2, 3] = 1;

            grid[4, 4] = 1;
            grid[5, 4] = 1;
            grid[6, 4] = 1;
            grid[7, 4] = 1;

            grid[5, 8] = 1;
            grid[5, 9] = 1;

            int turnCounter = 0;
            bool thereAreShipsLeft = true;
            while (thereAreShipsLeft)
            {

                turnCounter++;

                // make this a function obviously
                Console.Clear(); // keep grid in place and just update

                Console.WriteLine("  A B C D E F G H I J"); // just the top line position reference
                for (int row = 0; row < 10; row++)
                {
                    Console.Write(row + " "); // row is already the correct value so just write before the row itself
                    for (int column = 0; column < 10; column++)
                    {
                        if (grid[row, column] == 0)       // water
                        {
                            Console.Write("~");
                        }
                        else if (grid[row, column] == 1)  // boat
                        {
                            Console.Write("~");
                        }
                        else if (grid[row, column] == 2)  // hit
                        {
                            Console.Write("X");
                        }
                        else if (grid[row, column] == 3)  // miss
                        {
                            Console.Write("O");
                        }
                        //Console.Write(grid[row, column]);
                        //Console.Write("~"); // made redundant by the if elseifs above
                        Console.Write(" "); // space to make grid more evenly spaced, could also include space after each character
                    }
                    Console.WriteLine(); // linebreak for grid
                }
                Console.WriteLine(); // just a space between grid and computer readout

                Console.WriteLine("What cell do you want to target? (ex. B2 or H7)"); // use array to gather cell position at once
                string userGuess = Console.ReadLine().ToUpper();
                string userLetter = userGuess[0].ToString(); // add [0] to shooty row & [1] to shooty column

                // Console.WriteLine("What column would you like to shoot at? A - J"); updated to reflect cell input in stead of x & y

                //string[] userLetter = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}; // trying array like morse code exercise
                //int[] userTranslate = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

                // string userLetter = Console.ReadLine();  // single point data pull, obsolete with cell position above
                int shootyColumn = 0;
                if (userLetter == "A")                      // if statements for letter and number separately
                {
                    shootyColumn = 0;
                }
                if (userLetter == "B")
                {
                    shootyColumn = 1;
                }
                if (userLetter == "C")
                {
                    shootyColumn = 2;
                }
                if (userLetter == "D")
                {
                    shootyColumn = 3;
                }
                if (userLetter == "E")
                {
                    shootyColumn = 4;
                }
                if (userLetter == "F")
                {
                    shootyColumn = 5;
                }
                if (userLetter == "G")
                {
                    shootyColumn = 6;
                }
                if (userLetter == "H")
                {
                    shootyColumn = 7;
                }
                if (userLetter == "I")
                {
                    shootyColumn = 8;
                }
                if (userLetter == "J")
                {
                    shootyColumn = 9;
                }

                //Console.WriteLine("What row would you like to shoot at? 0 - 9");
                int shootyRow = Convert.ToInt32(userGuess[1].ToString()); // has been updated for cell input instead of x & y separate

                if (grid[shootyRow, shootyColumn] == 1)
                {
                    Console.WriteLine("You hit that boat! (press 'enter' to continue)");
                    grid[shootyRow, shootyColumn] = 2;
                    Console.ReadLine();
                }
                else
                {
                    Console.WriteLine("You hit some water... (press 'enter' to continue)");
                    grid[shootyRow, shootyColumn] = 3;
                    Console.ReadLine();
                }

                thereAreShipsLeft = false;          // see if there are any ships, start with false because a single ship will flip it
                for (int row = 0; row < 10; row++)
                {
                    for (int column = 0; column < 10; column++)
                    {
                        if (grid[row, column] == 1)
                        {
                            thereAreShipsLeft = true;
                        }
                    }
                }
            }
            Console.WriteLine("You sank all my battleships! You finished in " + turnCounter + " turns!");
            if (turnCounter <= 15)
            {
                Console.WriteLine("I just wanted to tell you how wonderful you are. I love you.");
            }
            else if (turnCounter > 15 && turnCounter <= 50)
            {
                Console.WriteLine("Great job!");
            }
            else if (turnCounter > 50 && turnCounter <= 99)
            {
                Console.WriteLine("Keep practicing!");
            }
            else
            {
                Console.WriteLine("You did bad and you should feel bad.");
            }
        }
    }
}