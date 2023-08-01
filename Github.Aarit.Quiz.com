Console.WriteLine("") //Type of text
using System.ComponentModel.Design; //oroganizes code

namespace ConsoleApp3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Aarit Poudyal");
            Console.WriteLine("Welcome to the quiz game");
            int score = 0; //what score you have
            int totalQuestions = 4; //how much questions there are
            Console.WriteLine("Question 1:");
            Console.WriteLine("What is the 2nd First President of USA?");
            Console.WriteLine("A. John Adams");
            Console.WriteLine("B. James Madison");
            Console.WriteLine("C. Abraham Lincoin");
            Console.WriteLine("D. Barack Obama");
            Console.WriteLine();
            Console.Write("Enter your answer (A, B, C, or D): ");
            string answer = Console.ReadLine().ToUpper(); //Helps know what the answer is
            if (answer == "A") //what the answer is
            {
                Console.WriteLine("Correct answer!");
                score++; //adds up a score
            }
            else //If you dont know what the answer is
            {
                Console.WriteLine("Wrong answer!");
                score--; //deletes a score
            }
            Console.WriteLine("Current Score: " + score); //keeps track of what the score is
            
                Console.WriteLine("Question 2:");
                Console.WriteLine("What is the highest mountian in the earth?");
                Console.WriteLine("A. K2");
                Console.WriteLine("B. Mount Everest");
                Console.WriteLine("C. Nanda Devi");
                Console.WriteLine("D. Mount Honey");
                Console.WriteLine();
                Console.WriteLine("Enter your answer (A, B, C, D,): ");
            
            answer = Console.ReadLine(); //different type to help know the answer
            if (answer == "B")
            {
                Console.WriteLine("Correct answer!");
                score++;
            }
            else
            {
                Console.WriteLine("Wrong Answer");
                score--;
            }
            Console.WriteLine("Question 3:");
            Console.WriteLine("Who made this quiz?");
            Console.WriteLine("A. Arit Poudyal");
            Console.WriteLine("B. Aarit Poudayl");
            Console.WriteLine("C. Aaryt PoudyaI");
            Console.WriteLine("D. Aarit Poudyal");
        
            answer = Console.ReadLine();
            if (answer == "D")
            {
                Console.WriteLine("Correct answer:");
                score++;
            }
            else
            {
                Console.WriteLine("Wrong Answer");
                score--;
            }
            Console.WriteLine("Question 4:");
            Console.WriteLine("When was Iron Invented?");
            Console.WriteLine("A. 3100BC");
            Console.WriteLine("B. 3200BC");
            Console.WriteLine("C. 3300BC");
            Console.WriteLine("D. 3000BC");

            answer = Console.ReadLine();
            if (answer == "B")
            {
                Console.WriteLine("Correct answer:");
                score++;
            }
            else
            {
                Console.WriteLine("Wrong Answer");
                score--;
            }

        }
    }
}
