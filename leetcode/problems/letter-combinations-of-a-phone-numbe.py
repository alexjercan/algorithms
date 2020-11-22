from typing import List


class Solution:
    def __init__(self):
        self.results = []
        self.letters = {'2': ['a', 'b', 'c'], '3': ['d', 'e', 'f'], '4': ['g', 'h', 'i'], '5': ['j', 'k', 'l'],
                        '6': ['m', 'n', 'o'], '7': ['p', 'q', 'r', 's'], '8': ['t', 'u', 'v'], '9': ['w', 'x', 'y', 'z']}

    def bkt(self, digits: str, k: int, res: List[str]):
        if k == len(digits):
            return self.results.append("".join(res))
        digit = digits[k]
        curr_letters = self.letters[digit]
        for l in curr_letters:
            res.append(l)
            self.bkt(digits, k + 1, res)
            res.pop(len(res) - 1)

    def letterCombinations(self, digits: str) -> List[str]:
        if not digits:
            return []
        self.bkt(digits, 0, [])
        return self.results

print(Solution().letterCombinations(""))
