Homework-3
==========

Sage Homework 3

For my Cython implementation of factoring an integer, there was a significant speed-up from the Python one.
Python took about 25 times longer than Cython in a couple of cases.
One weakness of my Cython implementation (which could be changed if I were willing to sacrifice a little bit of speed) 
is that I assume that we are factoring a C integer, which doesn't get that big.

For SumsOfSquares, changing to Cython didn't make much difference.
Even for large integers, Python took a little over 4 microseconds, and Cython took a little under 4 microseconds.

For my determinant function, I got Cython to be about twice as fast as my Python implementation.
I didn't take full advantage of the Cython types (for example, making my matrix a double**) because
I used a lot of Python-specific language in my original implementation like M[0:] that Cython didn't seem to like.
So I suspect I could make it faster if I changed some of that language.
