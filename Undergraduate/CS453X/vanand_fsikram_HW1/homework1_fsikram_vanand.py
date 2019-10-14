import numpy as np

def problem1 (A, B):
    return A + B

def problem2 (A, B, C):
    return (np.dot(A,B))-C

def problem3 (A, B, C):
    return A*B+C.T

def problem4 (x, y):
    return np.dot(x.T,y)

def problem5 (A):
    return np.zeros(A.shape)

def problem6 (A):
    return np.ones((A.shape[0],1))

def problem7 (A, alpha):
    return A+alpha*np.eye(A.shape[0])

def problem8 (A, i, j):
    return A[i,j]

def problem9 (A, i):
    return np.sum(A[i])

def problem10 (A, c, d):
    ans=A[(A >= c) & (A <= d)]
    return np.mean(ans)

def problem11 (A, k):
    eigval=np.linalg.eig(A)[0]
    eigvec=np.linalg.eig(A)[1]
    wabs=abs(eigval)
    idx=wabs.argsort()[::-1]
    kw=eigvec.T[idx].T
    kj=kw[:,:k]
    return kj

def problem12 (A, x):
    return np.linalg.solve(A,x)

def problem13 (A, x):
    return (np.linalg.solve(A.T,x.T)).T

#Testing
# A=np.array([[1,2,1],[3,2,1], [4,3,2]])
# B=np.array([[1,1,2],[4,1,1],[1,3,1]])
# C=np.array([[5,3,1],[3,4,2],[1,2,1]])
#
# x=np.array([[1,3,2,4]])
# x2=np.array([[1],[2],[3]])
# x3=np.array([[1,2,3]])
# y=np.array([[1,1,1,3]])
#
# alpha=4
#
# i=2
# j=1
#
# c=2
# d=4
#
# k=2


# ans2=problem2(A,B,C)
# ans3=problem3(A,B,C)
# ans4=problem4(x,y)
# ans5=problem5(A)
# ans6=problem6(A)
# ans7=problem7(A,alpha)
# ans8=problem8(A,i,j)
# ans9=problem9(A,i)
# ans10=problem10(A,c,d)
# ans11=problem11(A,k)
# ans12=problem12(A,x2)
#ans13=problem13(A,x3)
#print(ans2)

print("Problem 2")
x = np.array([[1,2,3], [4,5,6]])
y = np.array([[2],[4],[6]])
z = np.array([[1],[2]])
q2=problem2(x,y,z)

print(q2)

print("Problem 3")
x = np.array([[1,2], [4,5]])
y = np.array([[1,2], [4,5]])
z = np.array([[8,9], [10,11]])
q3=problem3(x,y,z)

print(q3)

print("Problem 4")
x= np.array([[1],[2]])
y=np.array([[3],[4]])
q4=problem4(x,y)

print(q4)

print("Problem 5")
x= np.array([[1,1,1],[1,1,1],[1,1,1]])
q5=problem5(x)

print(q5)

print("Problem 6")
x= np.array([[3,3,3],[3,3,3],[3,3,3]])
q6=problem6(x)

print(q6)

print("Problem 7")
q7=problem7(x,2)

print(q7)

print("Problem 8")
x= np.array([[1,2,3],[4,5,6],[7,8,9]])
q8=problem8(x,1,2)

print(q8)

print("Problem 9")
q9=problem9(x,1)

print(q9)

print("Problem 10")
q10=problem10(x,3,7)

print(q10)

print("Problem 11")
#a=[[1,2,5],[3,4,6],[7,8,9]]
resans=[[1,2],[3,4]]
q11=problem11(resans,2)

print(q11)

print("Problem 12")
a=np.array([[1,1],[25,50]])
b=np.array([[6],[200]])
q12=problem12(a,b)

print(q12)

print("Problem 13")
A=np.array([[1,2,1],[3,2,1], [4,3,2]])
x3=np.array([[1,2,3]])

q13=problem13(A,x3)

print(q13)