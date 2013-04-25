#cython implementation
#takes two lists M and N and a number dim                                         
#and multiplies them as matrices                                                  
#To simplify things, we assume both matrices are dim by dim matrices.             
#(So the lists are length dim^2)                                                   
def matMult(M,N,int dim):
    rv=[]
    cdef int i
    cdef int k
    for i in range(dim*dim):
        row=i/dim
        column=i%dim
        entry=0
        for k in range(dim):
            entry+=M[row*dim +k]*N[column +dim*k]
        rv.append(entry)
    return rv
