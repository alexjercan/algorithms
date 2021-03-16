using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Test
{
    class Program
    {
        static void whatFlavors(IReadOnlyList<int> cost, int money)
        {
            var counter = new Dictionary<int, List<int>>();
            for (var i = 0; i < cost.Count; i++)
            {
                if (counter.ContainsKey(cost[i])) counter[cost[i]].Add(i + 1);
                else counter.Add(cost[i], new List<int>() { i + 1 });
            }
            for (var i = 0; i < cost.Count; i++)
            {
                var complement = money - cost[i];
                if (counter.ContainsKey(complement) && complement != cost[i])
                {
                    if (counter[complement][0] < counter[cost[i]][0])
                        Console.WriteLine($"{counter[complement][0]} {counter[cost[i]][0]}");
                    else
                        Console.WriteLine($"{counter[cost[i]][0]} {counter[complement][0]}");
                    return;
                }
                if (counter.ContainsKey(complement) && complement == cost[i] && counter[complement].Count > 1)
                {
                    Console.WriteLine($"{counter[complement][0]} {counter[complement][1]}");
                    return;
                }
            }
        }

        private static void Main()
        {
            const int bufferSize = 128;
            using var fileStream = File.OpenRead("test.in");
            using var streamReader = new StreamReader(fileStream, Encoding.UTF8, true, bufferSize);
            var t = Convert.ToInt32(streamReader.ReadLine());
            for (var tItr = 0; tItr < t; tItr++)
            {
                var money = Convert.ToInt32(streamReader.ReadLine());

                var n = Convert.ToInt32(streamReader.ReadLine());

                var cost = Array.ConvertAll(streamReader.ReadLine().Split(' '), Convert.ToInt32);
                whatFlavors(cost, money);
            }
        }
    }
}

//NOT WORKING BECAUSE OF THE SHIT INPUT ON THE SITE
