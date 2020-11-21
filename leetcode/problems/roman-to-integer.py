class Solution:
    def romanToInt(self, s: str) -> int:
        hash_map = {'I': 1, 'V': 5, 'X': 10,
                    'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        rev_s = s[::-1]
        stage = 'I'
        result = 0
        for c in rev_s:
            if hash_map[stage] > hash_map[c]:
                result -= hash_map[c]
            else:
                stage = c
                result += hash_map[c]
        return result


print(Solution().romanToInt('LXIV'))
