def byte_xor(ba1, ba2):
    return bytes([_a ^ _b for _a, _b in zip(ba1, ba2)])

with open("image.bmp", "rb") as f:
    s = f.read()    

header = b'\x42\x4d\x8a\x44\x13\x00'
key = byte_xor(s[:6], header)
k = len(key)

s = bytes([c ^ key[i % k] for i, c in enumerate(s)])

with open("image_recovered.bmp", "wb") as f:
    f.write(s)