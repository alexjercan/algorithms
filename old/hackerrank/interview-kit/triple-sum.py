#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the triplets function below.


def triplets(a, b, c):
    r = 0
    xs, ys, zs = sorted(list(set(a))), sorted(
        list(set(b))), sorted(list(set(c)))

    cnt = 0
    xys = {}
    i = 0
    for y in ys:
        while i < len(xs) and xs[i] <= y:
            cnt += 1
            i += 1
        xys[y] = cnt

    cnt = 0
    zys = {}
    i = 0
    for y in ys:
        while i < len(zs) and zs[i] <= y:
            cnt += 1
            i += 1
        zys[y] = cnt

    for y in ys:
        r += xys[y] * zys[y]

    return r


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    lenaLenbLenc = input().split()

    lena = int(lenaLenbLenc[0])

    lenb = int(lenaLenbLenc[1])

    lenc = int(lenaLenbLenc[2])

    arra = list(map(int, input().rstrip().split()))

    arrb = list(map(int, input().rstrip().split()))

    arrc = list(map(int, input().rstrip().split()))

    ans = triplets(arra, arrb, arrc)

    fptr.write(str(ans) + '\n')

    fptr.close()
