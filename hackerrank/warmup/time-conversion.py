#!/bin/python3

import os
import sys

#
# Complete the timeConversion function below.
#
def timeConversion(s: str):
    pm = True if s[-2:] == "PM" else False
    t = s[:-2]  
    hh = int(t[:2])

    if hh < 12 and pm:
        return str(hh+12) + t[2:]
    elif hh == 12 and not pm:
        return "00" + t[2:]
    return t
    

if __name__ == '__main__':
    # f = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)
    print(result)

    # f.write(result + '\n')

    # f.close()
