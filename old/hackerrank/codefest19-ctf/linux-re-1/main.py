key_int = b'1337key'
enc_int = b'P]\x03C\x03V\x0bn@\x02Z\x1bT\x1cnK\x03E4\x06\x0b\x05PXZX'

len_key = len(key_int)
password = [chr(a ^ key_int[i % len_key]) for i, a in enumerate(enc_int)]
print("".join(password))
