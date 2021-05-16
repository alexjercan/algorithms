#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the miniMaxSum function below.
def miniMaxSum(arr):
    arr.sort()
    mini, maxi = arr[0], arr[4]
    for i in range(1, 4):
        mini += arr[i]
        maxi += arr[i]
    
    print(mini, maxi)
    

if __name__ == '__main__':
    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
