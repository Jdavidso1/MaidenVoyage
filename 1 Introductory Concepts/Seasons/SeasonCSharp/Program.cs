using System;

namespace Seasons
{
    class Program
    {
        static void Main(string[] args)
        {
            string Stop = "n";
            int timesAsked = 0;
            while (Stop != "y" && timesAsked < 10)
            {
                timesAsked++;

                Console.WriteLine("Hey, what's your sign? Actually, just tell me what month you were born in (as a number).");
                int Month = Convert.ToInt32(Console.ReadLine());
                int Day = 0;

                switch (Month)
                {
                    case 1:
                    case 2:
                        Console.WriteLine("You were born in Winter.");
                        break;
                    case 3:
                        Console.WriteLine("What day were you born (as a number)?");
                        Day = Convert.ToInt32(Console.ReadLine());
                        if (Day < 21)
                        {
                            Console.WriteLine("You were born in Winter.");
                        }
                        else
                        {
                            Console.WriteLine("You were born in Spring.");
                        }
                        break;
                    case 4:
                    case 5:
                        Console.WriteLine("You were born in Spring.");
                        break;
                    case 6:
                        Console.WriteLine("What day were you born (as a number)?");
                        Day = Convert.ToInt32(Console.ReadLine());
                        if (Day < 21)
                        {
                            Console.WriteLine("You were born in Spring.");
                        }
                        else
                        {
                            Console.WriteLine("You were born in Summer.");
                        }
                        break;
                    case 7:
                    case 8:
                        Console.WriteLine("You were born in Summer.");
                        break;
                    case 9:
                        Console.WriteLine("What day were you born (as a number)?");
                        Day = Convert.ToInt32(Console.ReadLine());
                        if (Day < 21)
                        {
                            Console.WriteLine("You were born in Summer.");
                        }
                        else
                        {
                            Console.WriteLine("You were born in Fall.");
                        }
                        break;
                    case 10:
                    case 11:
                        Console.WriteLine("You were born in Fall.");
                        break;
                    case 12:
                        Console.WriteLine("What day were you born (as a number)?");
                        Day = Convert.ToInt32(Console.ReadLine());
                        if (Day < 21)
                        {
                            Console.WriteLine("You were born in Fall.");
                        }
                        else
                        {
                            Console.WriteLine("You were born in Winter.");
                        }
                        break;

                }
                Console.WriteLine("Would you like to stop the program? y/n");
                Stop = Console.ReadLine();
            }
            if (timesAsked >= 10)
            {
                Console.Write("Okay buddy, I think you've had enough.");
            }
        }
    }
}
