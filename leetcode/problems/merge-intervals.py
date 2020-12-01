from typing import List


class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        if not intervals:
            return []

        result = []
        intervals = sortIntervals(intervals)

        current = intervals[0]
        for interval in intervals:
            if doesIntersect(current, interval):
                current = [min(current[0], interval[0]),
                           max(current[1], interval[1])]
            else:
                result = result + [current]
                current = interval
        result = result + [current]
        return result


def sortIntervals(intervals: List[List[int]]) -> List[List[int]]:
    return sorted(intervals, key=min)


def doesIntersect(i1: List[int], i2: List[int]):
    if i1[1] >= i2[0]:
        return True
    return False

print(Solution().merge([[1,4],[0,0]]))