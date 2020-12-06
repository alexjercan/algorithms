from typing import List

class Solution:
    def sortColors(self, nums: List[int]) -> None:
        zeros = 0
        ones = 0
        twos = 0
        for n in nums:
            if n == 0:
                zeros = zeros + 1
            if n == 1:
                ones = ones + 1
            if n == 2:
                twos = twos + 1
        i = 0
        for _ in range(zeros):
            nums[i] = 0
            i = i + 1
        for _ in range(ones):
            nums[i] = 1
            i = i + 1
        for _ in range(twos):
            nums[i] = 2
            i = i + 1
