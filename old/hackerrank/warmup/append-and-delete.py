#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the appendAndDelete function below.
def appendAndDelete(s, t, k):
    if len(s) + len(t) < k:
        return "Yes"
    
    m = 0
    for a, b in zip(s, t):
        if a != b:
            break
        m += 1
    
    # i have to delete len(s) - m characters from s and append len(t) - m
    kk = len(s) + len(t) - 2 * m
    if k < kk or (k - kk) % 2 == 1:
        return "No"
    return "Yes"

if __name__ == '__main__':
    # fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    t = input()

    k = int(input())

    result = appendAndDelete(s, t, k)
    print(result)

    # fptr.write(result + '\n')

    # fptr.close()
