# Linux RE 1

1. after running the executable it looks like there is a buffer overflow for an input longer than 104 characters
1. using radare2 it looks like the main function is just a bunch of if statements checking conditions like
    - is the string 23 characters
    - is the 5th character ^ 0x6c != 0
    - conditions writen by someone into c code [conditions](https://pastebin.com/UHyGa22P)
1. using a z3 based [solver](https://pastebin.com/4LHcp1k7) i got the password: shouldve_used_some_tool
1. the flag is CodefestCTF{shouldve_used_some_tool}
