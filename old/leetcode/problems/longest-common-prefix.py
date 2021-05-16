from typing import List
from functools import reduce
import math

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if not strs:
            return ""
        result = ""
        min_len = int(reduce(min, list(map(len, strs)), math.inf))
        for i in range(min_len):
            are_eq = len(set(map(lambda string: string[i], strs))) == 1
            if are_eq:
                result += strs[0][i]
            else:
                break
        return result

print(Solution().longestCommonPrefix([]))