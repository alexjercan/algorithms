#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the plusMinus function below.
def plusMinus(arr):
    if not arr:
        print("%.6f" % 0)
        print("%.6f" % 0)
        print("%.6f" % 0)
    p, z, n = 0, 0, 0
    for a in arr:
        if a > 0:
            p += 1
        if a == 0:
            z += 1
        if a < 0:
            n += 1
    N = len(arr)
    print("%.6f" % float(p/N))
    print("%.6f" % float(n/N))
    print("%.6f" % float(z/N))

if __name__ == '__main__':
    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
