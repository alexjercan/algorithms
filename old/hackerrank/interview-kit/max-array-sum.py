#!/bin/python3

import math
import os
import random
import re
import sys


def maxSubsetSum(arr):
    if not arr:
        return 0
    n = len(arr)
    dp = [0]*n

    dp[0] = max(arr[0], 0)
    dp[1] = max(dp[0], arr[1])

    for i in range(2, n):
        dp[i] = max(arr[i], dp[i-1], dp[i-2] + arr[i])

    return dp[n-1]


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    res = maxSubsetSum(arr)

    print(res)

    fptr.write(str(res) + '\n')

    fptr.close()
