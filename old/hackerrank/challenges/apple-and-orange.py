#!/bin/python3

import math
import os
import random
import re
import sys


def local2global(x, array):
    return [x + a for a in array]


def countApplesAndOranges(s, t, a, b, apples, oranges):
    apples = local2global(a, apples)
    oranges = local2global(b, oranges)
    print(len(list(filter(lambda x: s <= x and x <= t, apples))))
    print(len(list(filter(lambda x: s <= x and x <= t, oranges))))


if __name__ == '__main__':
    st = input().split()

    s = int(st[0])

    t = int(st[1])

    ab = input().split()

    a = int(ab[0])

    b = int(ab[1])

    mn = input().split()

    m = int(mn[0])

    n = int(mn[1])

    apples = list(map(int, input().rstrip().split()))

    oranges = list(map(int, input().rstrip().split()))

    countApplesAndOranges(s, t, a, b, apples, oranges)
