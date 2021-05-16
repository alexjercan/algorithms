class Solution:
    def mySqrt(self, x: int) -> int:
        def binarySearch(l, r, x):
            mid = l + (r - l) // 2
            mid_squared =  mid * mid
            next_mid_squared = (mid + 1) * (mid + 1)
            if mid_squared <= x and x < next_mid_squared:
                return mid
            elif r < l:
                return -1
            elif mid_squared > x:
                return binarySearch(l, mid - 1, x)
            else:
                return binarySearch(mid + 1, r, x)

        return binarySearch(1, x, x)

print(Solution().mySqrt(1))