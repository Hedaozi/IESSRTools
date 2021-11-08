using System;
using IESSRTools.Core.DotNetFramework.Utils;

namespace IESSRTools.Core.DotNetFramework.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("大学教师".SimilarityWith("大学教授"));
            Console.WriteLine("大学教师".SimilarityWith("大学教授", true));
            Console.ReadLine();
        }
    }
}
