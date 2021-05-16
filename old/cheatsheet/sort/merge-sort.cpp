#include <vector>

void merge_sort(std::vector<int> &array)
{
    const auto size = array.size();
    if (size == 1) return;

    const auto begin = array.begin();
    const auto end = array.end();

    std::vector<int> first(begin, begin + size / 2);
    std::vector<int> second(begin + size / 2, end);

    merge_sort(first);
    merge_sort(second);

    const auto first_size = first.size();
    const auto second_size = second.size();
    auto i = 0, j = 0;
    for (; i < first_size && j < second_size;)
    {
        if (first[i] <= second[j])
        {
            array[i + j] = first[i];
            i++;
        }
        else if (first[i] > second[j])
        {
            array[i + j] = second[j];
            j++;
        }
    }

    for (; i < first_size; i++)
        array[i + j] = first[i];

    for (; j < second_size; j++) 
        array[i + j] = second[j];        
}