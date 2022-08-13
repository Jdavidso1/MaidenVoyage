using System;
using System.Net.Http;
using System.Text;

namespace MorseCode
{
    class Program
    {
        static void Main(string[] args)
        {

            string message;
            char[] letters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                'w', 'x', 'y', 'z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ' ', '.'};
            string[] morse = {"._", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-." ,"---",
                ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..", ".----", "..---", "...--", "....-",
                ".....", "-....", "--...", "---..", "----.", "-----", "  ", " "};

            Console.WriteLine("Enter a message to be translated.");
            message = Console.ReadLine().ToLower();

            for (int whichLetter = 0; whichLetter < message.Length; whichLetter++)
            {
                int rowNumber = Array.IndexOf(letters, message[whichLetter]);
                Console.Write(morse[rowNumber]);
                Console.Write(" ");
            }
        }
    }
}
