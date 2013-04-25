#Cython implementation of the determinant function
#takes a matrix M (given as a list of lists) and the length of the list
#returns the determinant of M                                                             
#we assume that each list is length len, and that M is length len.               
def det(M,int len):
    if len==1:
        return M[0][0]
    rv=0
    #walk along elements in the first row
    for i in range(len):
        elt=M[0][i]
        #recursively call det on the matrix that includes everything except
        #the row and column that the current entry is in
        #multiply that by plus or minus the current element
        rv+=elt*(-1)**i*det([M[k][:i]+M[k][i+1:] for k in range(1,len)],len-1)
    return rv
