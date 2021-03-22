# Image corruption

1. bmp image corrupted or something
1. there are a lot of "matrix" words in the file
1. header of a bmp image is b'\x42\x4d\x8a\x44\x13\x00' which is 6 characters, "matrix" is also 6 characters.
after xoring the first 6 characters in the image with b'\x42\x4d\x8a\x44\x13\x00' i got "matrix" => 
xor the image with "matrix"
1. created a script and got the flag CodefestCTF{f1l35_h4v3_m461c_by735}
