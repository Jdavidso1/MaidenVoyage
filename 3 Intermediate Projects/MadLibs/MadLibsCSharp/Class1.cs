using System;
using System.Collections.Generic;
using System.Text;

namespace MadLibs
{
    class MadLibifier
    {
        public string MadLibify(string template)
        {

            // string template = System.IO.File.ReadAllText(@"C:\Users\ ... \Test.txt");
            // template importer requires brackets [ ] to be inserted ahead of time, obsolete with function

            int newPos = 0;
            string word = ("");
            string newStory = template;

            while (template.IndexOf(']', newPos) != -1)
            {
                int b1 = template.IndexOf('[', newPos);
                int b2 = template.IndexOf(']', newPos);
                newPos = template.IndexOf(']', newPos) + 1;
                // newPos here changes; will start searching for next bracket from the current newPos

                word = template.Substring((b1 + 1), (b2 - b1 - 1));
                Console.WriteLine("Input a word to replace '" + word + "'.");
                string userInput = Console.ReadLine();
                newStory = newStory.Replace("[" + word + "]", userInput);

                // the effect of "[" + word + "]" in: newStory.Replace("[" + word + "]", userInput);
                // is that it removes brackets so reads more naturally
                // and solves Debd probalem (the word "name" gets replaced at all points)

            }
            return newStory;
        }
    }
}
