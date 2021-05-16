# Linux RE 1

1. after running strings on the file you can see that it is compressed using upx.
1. radare2: U"1337key" string, maybe some key
1. enc_int = U"P]\x03\C\x03V\vn@\x02Z\x1bT\x1cnK\x03E4\x06\v\x05PXZX"
1. these two strings are xor'd and compared with the password provided as an argument
1. flag is CodefestCTF{an0th3r_s1mp1e_x0r_cr4ckm3}
