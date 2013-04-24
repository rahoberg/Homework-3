%cython
cdef int SumOfSquares2(int n):
    return n*(n+1)*(2*n+1)/6
