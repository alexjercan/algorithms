from collections import defaultdict

class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1:
            return s

        rows = defaultdict(str)
        curr_row = 0
        going_down = False

        for c in s:
            rows[curr_row] = rows[curr_row] + c
            if curr_row == 0 or curr_row == numRows - 1:
                going_down = not going_down
            curr_row += 1 if going_down else -1

        ret = ""
        for row in rows.values():
            ret = ret + row
        return ret

print(Solution().convert("ASDASD", 2))