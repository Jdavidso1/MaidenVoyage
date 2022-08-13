using System;
using System.Diagnostics.Tracing;

namespace Day3_Fizzbuzz2
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int counter = 1; counter <= 100; counter++)
            {
                if (counter % 15 == 0)
                {
                    Console.WriteLine("fizzbuzz");
                }
                else if (counter % 5 == 0)
                {
                    Console.WriteLine("buzz");
                }
                else if (counter % 3 == 0)
                {
                    Console.WriteLine("fizz");
                }
                else
                {
                    Console.WriteLine(counter);
                }
            }
        }
    }
}