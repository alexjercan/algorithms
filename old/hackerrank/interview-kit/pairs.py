#!/bin/python3

import math
import os
import random
import re
import sys
from collections import Counter

# Complete the pairs function below.


def pairs(k, arr):
    r = 0
    xs = Counter(arr)
    ys = Counter([x + k for x in arr])
    n, m = len(xs), len(ys)
    i, j = 0, 0
    xks, yks = list(sorted(xs.keys())), list(sorted(ys.keys()))
    
    while i < n and j < m:
        if xks[i] > yks[j]:
            j += 1
        elif xks[i] < yks[j]:
            i += 1
        else:
            r += xs[xks[i]] * ys[yks[j]]
            i += 1
            j += 1

    return r

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nk = input().split()

    n = int(nk[0])

    k = int(nk[1])

    arr = list(map(int, input().rstrip().split()))

    result = pairs(k, arr)

    fptr.write(str(result) + '\n')

    fptr.close()
