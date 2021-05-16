class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        charSet = set()
        res, l = 0, 0

        for r in range(len(s)):
            while s[r] in charSet:
                charSet.remove(s[l])
                l += 1
            charSet.add(s[r])
            res = max(res, r - l + 1)
        return res

# abcabcbb
# I1: r = 0, s[r] = 'a', l = 0, charSet = {'a'}, res = 1
# I2: r = 1, s[r] = 'b', l = 0, charSet = {'a', 'b'}, res = 2
# I3: r = 2, s[r] = 'c', l = 0, charSet = {'a', 'b', 'c'}, res = 3
# I4: r = 3, s[r] = 'a', l = 1, charSet = {'b', 'c', 'a'}, res = 3
# I5: r = 4, s[r] = 'b', l = 2, charSet = {'c', 'a', 'b'}, res = 3
# I6: r = 5, s[r] = 'c', l = 3, charSet = {'a', 'b', 'c'}, res = 3
# I7: r = 6, s[r] = 'b', l = 4, charSet = {'a', 'c', 'b'}, res = 3
# I8: r = 7, s[r] = 'b', l = 5, charSet = {'a', 'c', 'b'}, res = 3