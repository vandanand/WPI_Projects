import numpy as np
import matplotlib.pyplot as plt

def PCA(X):
    Xmean=np.mean(X,axis=0)
    Xtilda = X - Xmean
    cov=(Xtilda).T.dot((Xtilda))/(X.shape[0]-1) #784x784
    eigvecs=keigen(cov) #784x2
    first_eigvec=eigvecs[:,0].reshape((784,1)) #784x1
    second_eigvec=eigvecs[:,1].reshape((784,1)) #784x1

    #find p values
    p1=np.dot(Xtilda,first_eigvec) #5000x1
    p2=np.dot(Xtilda,second_eigvec) #5000x1

    return p1, p2


#Helper to find 2 eigenvectors corresponding to 2 highest eigenvalues
def keigen (Xmult):
    eigval=np.linalg.eig(Xmult)[0]
    eigvec=np.linalg.eig(Xmult)[1]
    wabs=abs(eigval)
    idx=wabs.argsort()[::-1]
    kw=eigvec.T[idx].T
    kj=kw[:,:2]
    return kj


if __name__ == "__main__":
    # Load data
    Xtre = (np.load("small_mnist_train_images.npy"))#training
    ytre = np.load("small_mnist_train_labels.npy")
    Xte = (np.load("small_mnist_test_images.npy"))#testing
    yte = np.load("small_mnist_test_labels.npy")


    newyte=np.argmax(yte, axis=1)
    colors=np.array(['b','#66CC00','#FFCCCC','c','#66B2FF','#33FFFF','#B2FF66','#FFFF66','#FF3333','#FF9933'])
    lastyte=colors[newyte]

    res=PCA(Xte)
    plt.scatter(res[0],res[1],c=lastyte, s=1)
    plt.show()

    # #Test grabbing the kth eigenvalue/eigenvector
    # print("Kth Highest Eigen")
    # input=[[1,2],[3,4]]
    # ans=keigen(input)
    # print(ans)

