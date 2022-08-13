using System;

namespace FieldPainting
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("What is the size of your circle (radius in feet)?");

            double Radius = Convert.ToDouble(Console.ReadLine());
            double Area = Radius * Radius * Math.PI;
            int Coverage = 100;
            double Buckets = Math.Ceiling(Area / Coverage);

            Console.WriteLine("You will need " + Buckets + " buckets of paint to cover your " + Radius + "' radius circle.");

            Console.WriteLine("");

            Console.WriteLine("What color paint would you like to use? red / blue / green / yellow");

            string Color = Console.ReadLine();
            int Cost = 0;
            int TotalCost;

            if (Color == "red")
            {
                Coverage = 100;
                Cost = 25;
            }
            if (Color == "blue")
            {
                Coverage = 120;
                Cost = 28;
            }
            if (Color == "green")
            {
                Coverage = 90;
                Cost = 22;
            }
            if (Color == "yellow")
            {
                Coverage = 80;
                Cost = 20;
            }

            Buckets = Math.Ceiling(Area / Coverage);
            TotalCost = Convert.ToInt32(Buckets * Cost);

            Console.WriteLine("");

            Console.WriteLine("You will need " + Buckets + " buckets of " + Color + " paint to cover your " + Radius + "' radius circle.");

            Console.WriteLine("It will cost you $" + TotalCost + ".");
        }
    }
}
