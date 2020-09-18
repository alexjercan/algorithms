using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Hashmap
{
    class FrequencyQueries
    {
        private static Dictionary<int, int> _numbers = new Dictionary<int, int>();
        private static Dictionary<int, List<int>> _frequencies = new Dictionary<int, List<int>>();
        
        private static void AddElement(int value)
        {
            if (_numbers.ContainsKey(value))
            {
                var freq = _numbers[value];
                _numbers[value]++;

                _frequencies[freq].Remove(value);
                if(_frequencies.ContainsKey(freq + 1) == false) _frequencies.Add(freq + 1, new List<int>());
                _frequencies[freq + 1].Add(value);
            }
            else
            {
                const int freq = 0;
                _numbers.Add(value, 1);

                if (_frequencies.ContainsKey(freq + 1) == false) _frequencies.Add(freq + 1, new List<int>());
                _frequencies[freq +  1].Add(value);
            }
        }

        private static void RemoveElement(int value)
        {
            if (_numbers.ContainsKey(value) == false) return;

            var freq = _numbers[value];
            _numbers[value]--;

            if (freq - 1 == 0) _numbers.Remove(value);
            _frequencies[freq].Remove(value);
            
            if (freq - 1 == 0) return;
            if (_frequencies.ContainsKey(freq - 1) == false)_frequencies.Add(freq - 1, new List<int>());
            _frequencies[freq - 1].Add(value);
        }

        private static bool ContainsFreq(int freq)
        {
            if (_frequencies.ContainsKey(freq) == false) return false;
            return _frequencies[freq].Count > 0;
        }
        
        private static IEnumerable<int> FrequencyQuery(IEnumerable<List<int>> queries)
        {
            var responses = new List<int>();
            
            foreach (var query in queries)
            {
                var action = query[0];
                var value = query[1];

                switch (action)
                {
                    case 1 :
                        AddElement(value); 
                        break;
                    case 2:
                        RemoveElement(value); 
                        break;
                    case 3:
                        responses.Add(ContainsFreq(value) ? 1 : 0);
                        break;
                }
            }

            return responses;
        }
        
        private static void Main(string[] args)
        {
            TextWriter textWriter = new StreamWriter(Environment.GetEnvironmentVariable("OUTPUT_PATH") ?? throw new InvalidOperationException(), true);

            var q = Convert.ToInt32(Console.ReadLine()?.Trim());

            var queries = new List<List<int>>();

            for (var i = 0; i < q; i++)
                queries.Add(Console.ReadLine()
                    ?.TrimEnd().Split(' ').ToList()
                    .Select(queriesTemp => Convert.ToInt32(queriesTemp)).ToList());
            
            var ans = FrequencyQuery(queries);

            textWriter.WriteLine(string.Join("\n", ans));

            textWriter.Flush();
            textWriter.Close();
        }
    }
}