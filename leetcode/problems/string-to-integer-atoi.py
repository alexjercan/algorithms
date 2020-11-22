class Solution:
    def myAtoi(self, s: str) -> int:
        new_s = s.strip()
        if not new_s:
            return 0
        sign = -1 if new_s[0] == '-' else 1
        num = 0
        for c in new_s[1:] if new_s[0] == '-' or new_s[0] == '+' else new_s:
            if c.isdigit():
                num = num * 10 + int(c)
            else:
                break
        max_num = pow(2, 31)
        my_num = sign * num
        if my_num >= max_num - 1:
            return max_num - 1
        elif my_num <= -max_num:
            return -max_num
        return my_num