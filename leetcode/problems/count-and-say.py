class Solution:
    def countAndSay(self, n: int) -> str:
        if n == 1:
            return "1"

        prev = self.countAndSay(n - 1)
        count = 0
        curr_c = prev[0]
        result = []
        for c in prev:
            if curr_c == c:
                count = count + 1
            else:
                result = result + [str(count), curr_c]
                curr_c = c
                count = 1
        result = result + [str(count), c]
        return "".join(result)

print(Solution().countAndSay(30))