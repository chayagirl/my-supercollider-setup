# my-supercollider-setup
My supercollider setup, GUIs, and patterns I use for my music!

## Things to know:
Run the code in `mixingstaging.scd` to initialize the channels and everything.

I assign my buffers like this:
```
~a1 = Buffer.read(s, "/path/to/file");
~a2 = Buffer.read(s, "/path/to/file");
.
.
.
~a20 = Buffer.read(s, "/path/to/file");
~b1 = Buffer.read(s, "/path/to/file");
```
Basically each buffer is a letter followed by a number 1-20.
