from typing import List, Dict


class Solution:
    def canJump(self, nums: List[int]) -> bool:
        return greedy(nums)


def greedy(nums: List[int]):
    lastPos = len(nums) - 1
    for i in range(len(nums) - 1, - 1, - 1):
        if i + nums[i] >= lastPos:
            lastPos = i
    return lastPos == 0


def canJumpFromPositionTab(position: int, nums: List[int]):
    memo = dict()

    memo[len(nums) - 1] = True
    for p in range(len(nums) - 2, - 1, - 1):
        furthestJump = min(p + nums[p], len(nums) - 1)
        for t in range(p + 1, furthestJump + 1):
            if t in memo and memo[t]:
                memo[p] = True
                break
    return 0 in memo and memo[0]


def canJumpFromPositionMemo(position: int, nums: List[int], memo: Dict[int, bool]) -> bool:
    if position == len(nums) - 1:
        return True

    if position in memo:
        return memo[position]

    furthestJump = min(position + nums[position], len(nums) - 1)
    for nextPosition in range(position + 1, furthestJump + 1):
        if canJumpFromPositionMemo(nextPosition, nums, memo):
            memo[position] = True
            return True

    memo[position] = False
    return False


def canJumpFromPosition(position: int, nums: List[int]) -> bool:
    if position == len(nums) - 1:
        return True

    furthestJump = min(position + nums[position], len(nums) - 1)
    for nextPosition in range(position + 1, furthestJump + 1):
        if canJumpFromPosition(nextPosition, nums):
            return True

    return False


print(Solution().canJump([2, 3, 1, 1, 4]))
