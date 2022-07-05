using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            
            FileStream stream = File.OpenRead("search.txt");
            char inChar;
            int myByte;
            string word = "";
            while((myByte  = stream.ReadByte()) != -1)
            {
                inChar = Convert.ToChar(myByte);
                if (char.IsLetterOrDigit(inChar))
                {
                    word += inChar;
                }
                else
                {
                    word = "";
                }
            }


        }
    }
}