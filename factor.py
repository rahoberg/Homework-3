def Factor(n):
#never have to check more than the square root of n                                                       
    MaxNum=n**.5 + 1
    i=2
    while i < MaxNum:
        #if n is divisible by i, update n and print i
        # (this will not change the user's variable n)
        #Don't need to update i, since we still need to check if there are more
        #factors of i as well as all numbers greater than i
        if n%i == 0:
            print i
            n=n/i
            MaxNum=(MaxNum-1)/(i**.5)+1
        else:
            #increment i
            i=i+1
    #if we get here, n is prime
    print n
