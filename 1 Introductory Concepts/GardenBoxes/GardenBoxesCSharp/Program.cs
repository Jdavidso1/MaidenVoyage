using System;

namespace GardenBoxes
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hi. Weird question, but what's the length of your garden box?");
            int Length = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Cool. And the width?");
            int Width = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Thanks. So your garden box is " + Length + " by " + Width + " units.");
            int Area = (Length * Width);
            int Perimeter = ((Length * 2) + (Width * 2));
            Console.WriteLine("The area is " + Area + " square units.");
            Console.WriteLine("The perimeter is " + Perimeter + " units.");
            int Carrots = (Area * 16) / 16;
            int Corn = (Area * 3) / 16;
            int Beets = (Area * 9) / 16;
            Console.WriteLine("Great news! You can plant " + Carrots + " carrots, " + Corn + " corn, or " + Beets + " beets!");
        }
    }
}
