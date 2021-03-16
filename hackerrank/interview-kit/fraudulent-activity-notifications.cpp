#include <vector>

int activity_notifications(std::vector<int> expenditure, const int d)
{
    auto cnt = 0;
    auto size = expenditure.size();
    auto m1 = 0, m2 = 0;

    const int i1 = floor((d - 1) * 0.5);
    const int i2 = ceil((d - 1) * 0.5);

    auto cs = std::vector<int>(201);
    for (auto i = 0; i < d; i++) cs[expenditure[i]]++;

    for (auto i = d; i < size; i++)
    {
        for (auto j = 0, k = 0; k <= i1; k += cs[j], j++) m1 = j;
        for (auto j = 0, k = 0; k <= i2; k += cs[j], j++) m2 = j;
        const auto m = (m1 + m2) / 2.0f;

        if (expenditure[i] >= m * 2) cnt++;

        cs[expenditure[i - d]]--;
        cs[expenditure[i]]++;
    }

    return cnt;
}

int test0()
{
    return activity_notifications({2, 3, 4, 2, 3, 6, 8, 4, 5}, 5);
}

int test1()
{
    return activity_notifications({1, 2, 3, 4, 4}, 4);
}

int main()
{
    auto test0solution = test0();
    auto test1solution = test1();

    if (test0solution == 2) printf("Test 0 OK\n");
    else printf("Test 0 FAIL, %d\n", test0solution);
    if (test1solution == 0) printf("Test 1 OK\n");
    else printf("Test 1 FAIL %d\n", test1solution);

    return 0;
}
