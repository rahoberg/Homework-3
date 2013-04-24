#takes a matrix M (given as a list of lists) and returns                          
#the determinant of M                                                             
#we assume that each list is the same length, and that M is square.               
def det(M):
    if len(M)==1:
        return M[0][0]
    rv=0
    #walk along elements in the first row
    for i in range(len(M[0])):
        elt=M[0][i]
        #recursively call det on the matrix that includes everything except
        #the row and column that the current entry is in
        #multiply that by plus or minus the current element
        rv+=elt*(-1)**i*det([M[k][:i]+M[k][i+1:] for k in range(1,len(M)])
    return rv
