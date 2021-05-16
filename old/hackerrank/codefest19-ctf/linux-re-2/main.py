#!/usr/bin/python

# References:
# - https://pastebin.com/4LHcp1k7 (borrowed from)

from z3 import *

s = [BitVec("s[%d]" % i, 32) for i in range(0, 8)]

# should've
z3_solver = Solver()
flag = ""
for i in range(0, len(s)):
    z3_solver.add(s[i] >= 0x41, s[i] <= 0xff)
    z3_solver.add((s[4] ^ 0x6c) == 0)
    z3_solver.add((s[3] + 1 == s[6]))
    z3_solver.add((s[5] + 1 == s[7]))
    z3_solver.add((s[7] + 7 == s[4]))
    z3_solver.add((s[3] - 9 == s[4]))
    z3_solver.add((s[2] + 6 == s[3]))
    z3_solver.add((s[0] ^ s[7] == 0x16))
    z3_solver.add((s[1] + 4 == s[4]))

    if z3_solver.check() == sat:
        sol = z3_solver.model()
        for i in range(8):
            flag += chr(int(str(sol[s[i]])))
        break

flag += '_'

# used (+9)
s = [BitVec("s[%d]" % i, 32) for i in range(0, 4)]

z3_solver = Solver()

for i in range(0, len(s)):
    z3_solver.add(s[i] >= 0x41, s[i] <= 0xff)
    z3_solver.add(s[3] + 1 == s[2])
    z3_solver.add(s[1] + 2 == s[0])
    z3_solver.add(s[1] ^ s[3] == 0x17)
    z3_solver.add(s[3] ^ 0x64 == 0)

    if z3_solver.check() == sat:
        sol = z3_solver.model()
        for i in range(4):
            flag += chr(int(str(sol[s[i]])))
        break

flag += '_'

# some (+14)
s = [BitVec("s[%d]" % i, 32) for i in range(0, 4)]

z3_solver = Solver()

for i in range(0, len(s)):
    z3_solver.add(s[i] >= 0x41, s[i] <= 0xff)
    z3_solver.add(s[3] + 8 == s[2])
    z3_solver.add(s[1] - 2 == s[2])
    z3_solver.add(s[0] ^ s[3] == 0x16)
    z3_solver.add(s[2] ^ 0x6d == 0)

    if z3_solver.check() == sat:
        sol = z3_solver.model()
        for i in range(4):
            flag += chr(int(str(sol[s[i]])))
        break

flag += "_"

# tool (+19)
s = [BitVec("s[%d]" % i, 32) for i in range(0, 4)]

z3_solver = Solver()

for i in range(0, len(s)):
    z3_solver.add(s[i] >= 0x41, s[i] <= 0xff)
    z3_solver.add(s[3] + 3 == s[1])
    z3_solver.add(s[1] + 16 == s[2] + 16)
    z3_solver.add(s[2] ^ s[0] == 0x1b)
    z3_solver.add(s[3] ^ 0x6c == 0)

    if z3_solver.check() == sat:
        sol = z3_solver.model()
        for i in range(4):
            flag += chr(int(str(sol[s[i]])))
        break

print(flag)