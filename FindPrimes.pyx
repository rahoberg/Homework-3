#cython of finding primes
def FindPrimes2(int n):
    BoolArray=[True]*n
    cdef int i=2
    cdef int k
    while(i<n):
        if BoolArray[i]:
            #if i is prime, set all multiples of i                              
            #to be False in the BoolArray                                       
            print i
            k=1
            while(k*i<n):
                BoolArray[k*i]=False
                k=k+1
        #either way, increment i                                                
        i=i+1
