using System;
using System.Runtime.InteropServices;
using System.Xml.Serialization;
using System.Data.SqlClient;

namespace Day28GardenBoxes
{
    class Program
    {
        static void Main(string[] args)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\JDAVI\OneDrive\Documents\BACKUPS\ACADEMYPGH\WEEK6\Day28\Day28GardenBoxes\garden-boxes\Database1.mdf;Integrated Security=True");

            connection.Open();

            SqlDataReader reader;
            string repeat = "";

            while (repeat != "n")
            { 
                Console.WriteLine("LET'S PLAN A GARDEN!\nWhat is the length of your garden box in feet?");
                double length = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine("And the width?");
                double width = Convert.ToDouble(Console.ReadLine());
                double area = length * width;

                Console.WriteLine("And what were you hoping to plant? Choose from the list below, or press 0 to add something new!");
                SqlCommand listPlants = new SqlCommand("SELECT Id, Name FROM Plants", connection);
                reader = listPlants.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(reader["Id"] + ") " + reader["Name"]);
                }
                reader.Close();

                int userChoice = Convert.ToInt32(Console.ReadLine());
                string newPlant;
                int newFootprint;

                if (userChoice == 0)
                {
                    Console.WriteLine("Okay, what plant would you like to add?");
                    newPlant = Console.ReadLine();
                    Console.WriteLine("Now go look at the plant info - how many would fit in a 16 by 16 foot space?");
                    newFootprint = Convert.ToInt32(Console.ReadLine());
                    SqlCommand addPlants = new SqlCommand($"INSERT INTO Plants (Name, Footprint) VALUES ('{newPlant}', {newFootprint}); SELECT @@Identity AS ID", connection);
                    reader = addPlants.ExecuteReader();
                    reader.Read();
                    userChoice = Convert.ToInt32(reader["ID"]);
                    Console.WriteLine($"Your {newPlant} plant has successfully been added!");
                    reader.Close();
                }
                SqlCommand countPlants = new SqlCommand($"SELECT Footprint, Name FROM Plants WHERE Id = {userChoice}", connection);
                reader = countPlants.ExecuteReader();
                reader.Read();
                double footprint = Convert.ToDouble(reader["Footprint"]);

                Console.WriteLine($"So your area is {Math.Round(area,2)} square feet, which means you could plant {Math.Floor(area / 16 * footprint)} {reader["Name"]} plants.");
                reader.Close();

                Console.WriteLine("Want to check again? y/n");
                repeat = Console.ReadLine();
            }
            Console.WriteLine("Goodbye!");

            connection.Close();
        }
    }
}

//Write a program that will take in a user's garden box size, then let them pick from a list of plants and tell them how many they can plant in that space.

//Please create a database that will hold plants. You don't need to add more than 2 or 3 plants into the database for testing. Please make sure the database or a description of the database is included in your repo.

// git add "error: open("Day28GardenBoxes/Database1.mdf"): Permissions denied
//          error: unable to index file 'Day28GardenBoxes/Database1.mdf'
//          fatal: adding files failed