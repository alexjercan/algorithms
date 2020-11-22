class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if not needle:
            return 0
        for i in range(len(haystack) - len(needle) + 1):
            ok = True
            j = i
            for c in needle:
                if haystack[j] != c:
                    ok = False
                    break
                j = j + 1
            if ok:
                return i
        return -1
