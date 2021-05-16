from typing import List


class Solution:
    def canCompleteCircuit(self, gas: List[int], cost: List[int]) -> int:
        n = len(gas)

        for start in range(n):
            tank = gas[start]

            for i in range(n):
                tank = tank - cost[(i + start) % n]
                if tank < 0:
                    break
                tank = tank + gas[(i + start + 1) % n]
            
            if i == n - 1 and tank >= 0:
                return start
            
        return -1