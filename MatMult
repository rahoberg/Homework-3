#takes two lists M and N and a number dim                                         
#and multiplies them as matrices                                                  
#To simplify things, we assume both matrices are dim by dim matrices.             
#(So the lists are lenth dim^2)                                                   
def matMult(M,N,dim):
    rv=[]
    for i in range(dim**2):
        row=i/dim
        column=i%dim
        entry=0
        for k in range(dim):
            entry+=M[row*dim +k]*N[column +dim*k]
        rv.append(entry)
    return rv
