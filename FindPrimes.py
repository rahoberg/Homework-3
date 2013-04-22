def FindPrimes(n):
    BoolArray=[True]*n
    i=2
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


FindPrimes(10000)
