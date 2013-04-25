Homework-3
==========

Sage Homework 3

For my Cython implementation of factoring an integer, there was a significant speed-up from the Python one.
Python took about 25 times longer than Cython in a couple of cases.
One weakness of my Cython implementation (which could be changed if I were willing to sacrifice a little bit of speed) 
is that I assume that we are factoring a C integer, which doesn't get that big.

For SumsOfSquares, changing to Cython didn't make much difference.
Even for large integers, Python took a little over 4 microseconds, and Cython took a little under 4 microseconds.

Just by adding variable types, FindPrimes became 11 times as fast. 

For some reason my matrix multiplication function would not work in Sage even though it worked fine in my version of Python.
Not sure what the problem is there. So Cython took about 10 microseconds, but I'm not sure how long the original Python was taking.

For my determinant function, I got Cython to be about twice as fast as my Python implementation.
