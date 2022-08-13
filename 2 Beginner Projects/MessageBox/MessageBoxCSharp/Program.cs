using System;
using System.Diagnostics.CodeAnalysis;
using System.Dynamic;
using System.Net.Http;
using System.Security.Cryptography;
using System.Threading.Tasks.Dataflow;
using System.Threading.Tasks.Sources;
using System.Xml.Serialization;

namespace MessageBox
{
    class Program
    {
        static void Main(string[] args)
        {
            string userTask = "";
            string[] mailbox = new string[10];
            int messageId = 0;
            int retrieveId = 0;

            while (userTask != "q")
            {
                Console.WriteLine("Do you want to s)ave a message, r)etrieve a message, v)iew message boxes, or q)uit?");
                userTask = Console.ReadLine().ToLower();

                if (userTask == "s")
                {
                    Console.WriteLine("What is the message you wish to save?");
                    string message = Console.ReadLine();                            // take string message
                    char[] messageArray = message.ToCharArray();                    // convert string message to char array
                    for (int letter = 0; letter < message.Length; letter++)         //
                    {
                        int preCharacter = Convert.ToInt32(message[letter]);                    // convert user input to ints
                        int postCharacter = preCharacter + 2;                       // uniformly shift ints up in value for encryption
                        messageArray[letter] = (char)postCharacter;                 // convert ints back to chars and assign to char array
                    }                                                               //
                    message = new string(messageArray);                             // replace original message so only encrypted remains
                    mailbox[messageId] = message;                                   // assign position in mailbox with ID number
                    Console.WriteLine("Message is saved in mailbox number " + messageId + ".");
                    messageId = messageId + 1;
                }
                else if (userTask == "r")
                {
                    Console.WriteLine("Retrieve message from which mailbox?");
                    retrieveId = Convert.ToInt32(Console.ReadLine());

                    string message = mailbox[retrieveId];                           // find the stored encrypted message
                    char[] messageArray = message.ToCharArray();                    //
                    for (int letter = 0; letter < message.Length; letter++)         //
                    {                                                               //
                        int preCharacter = (int)message[letter];                    // same stuff as above...
                        int postCharacter = preCharacter - 2;                       // 
                        messageArray[letter] = (char)postCharacter;                 //
                    }                                                               //
                    message = new string(messageArray);                             // assign it to message string rather than mailbox
                    Console.WriteLine("Here is your saved message:");               //    so we don't overwrite the encrypted version
                    Console.WriteLine(message);                                     //
                    message = "";                                                   // reset message so unencrypted is gone
                }
                else if (userTask == "v")
                {
                    for (int i = 0; i < mailbox.Length; i++)
                    {
                        Console.WriteLine(i + " " + mailbox[i]);
                    }
                }
                else if (userTask == "q")
                {
                    Console.WriteLine("Ok, bye!");
                }
                else
                {
                    Console.WriteLine("Please try again.");
                }
            }
        }
    }
}