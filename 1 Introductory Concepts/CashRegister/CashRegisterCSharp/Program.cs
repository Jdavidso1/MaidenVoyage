using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CashRegisterCSharp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // do math in pennies to avoid rounding errors?

            Console.WriteLine("Enter the cost.");
            double cost = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter cash given.");
            double cash = Convert.ToDouble(Console.ReadLine());

            double change = Math.Round((cash - cost), 2);

            Console.WriteLine("The change due is $" + change);

            int hundreds = 0;
            int fifties = 0;
            int twenties = 0;
            int tens = 0;
            int fives = 0;
            int dollars = 0;
            int quarters = 0;
            int dimes = 0;
            int nickels = 0;
            int pennies = 0;

            while (change >= 100)
            {
                change = change - 100;
                hundreds += 1;
            }
            while (change >= 50)
            {
                change = change - 50;
                fifties += 1;
            }
            while (change >= 20)
            {
                change = change - 20;
                twenties += 1;
            }
            while (change >= 10)
            {
                change = change - 10;
                tens += 1;
            }
            while (change >= 5)
            {
                change = change - 5;
                fives += 1;
            }
            while (change >= 1)
            {
                change = change - 1;
                dollars += 1;
            }
            while (change >= .25)
            {
                change = Math.Round((change - .25), 2);
                quarters += 1;
            }
            while (change >= .10)
            {
                change = Math.Round((change - .10), 2);
                dimes += 1;
            }
            while (change >= .05)
            {
                change = Math.Round((change - .05), 2);
                nickels += 1;
            }
            while (change >= .01)
            {
                change = Math.Round((change - .01), 2);
                pennies += 1;
            }
            Console.WriteLine("Give them: ");
            if (hundreds > 0) { Console.WriteLine(hundreds + " hundreds"); }
            if (fifties > 0) { Console.WriteLine(fifties + " fifties"); }
            if (twenties > 0) { Console.WriteLine(twenties + " twenties"); }
            if (tens > 0) { Console.WriteLine(tens + " tens"); }
            if (fives > 0) { Console.WriteLine(fives + " fives"); }
            if (dollars > 0) { Console.WriteLine(dollars + " dollars"); }
            if (quarters > 0) { Console.WriteLine(quarters + " quarters"); }
            if (dimes > 0) { Console.WriteLine(dimes + " dimes"); }
            if (nickels > 0) { Console.WriteLine(nickels + " nickels"); }
            if (pennies > 0) { Console.WriteLine(pennies + " pennies"); }
        }
    }
}
