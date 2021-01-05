class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        first = 0
        last = len(s) - 1
        while first <= last:
            while first <= last and not (s[first].isalpha() or s[first].isdigit()):
                first = first + 1
            while first <= last and not (s[last].isalpha() or s[last].isdigit()):
                last = last - 1
            if first > last:
                return True
            if s[first].upper() != s[last].upper():
                return False
            first = first + 1
            last = last - 1
        return True