with open("output.txt", "rb") as f:
    s = f.read()
s = s[::-1]
with open("output2.txt", "wb") as f:
    f.write(s)