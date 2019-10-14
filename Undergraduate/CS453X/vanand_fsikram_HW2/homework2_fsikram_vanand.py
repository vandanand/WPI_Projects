import numpy as np
import matplotlib.pyplot as plt


# Given an array of faces (N x M x M, where N is number of examples and M is number of pixes along each axis),
# return a design matrix Xtilde ((M**2 + 1) x N) whose last row contains all 1s.
def reshapeAndAppend1s(faces):
    face5000 = faces.reshape(faces.shape[0], -1)
    a = np.ones(faces.shape[0])
    return np.vstack((face5000.T, a))


# Given a vector of weights w, a design matrix Xtilde, and a vector of labels y, return the (unregularized)
# MSE.
def fMSE(w, Xtilde, y):
    transposeXtilde = Xtilde.T
    yhat = transposeXtilde.dot(w)  # +w[w.shape[0]-1]
    mean = np.mean((yhat - y) ** 2) / 2

    return mean


# Given a vector of weights w, a design matrix Xtilde, and a vector of labels y, and a regularization strength
# alpha (default value of 0), return the gradient of the (regularized) MSE loss.
def gradfMSE(w, Xtilde, y, alpha=0.):
    pass


# Given a design matrix Xtilde and labels y, train a linear regressor for Xtilde and y using the analytical solution.
def method1(Xtilde, y):
    woptimal = np.linalg.solve(Xtilde.dot(Xtilde.T), Xtilde.dot(y))
    return woptimal


# Given a design matrix Xtilde and labels y, train a linear regressor for Xtilde and y using gradient descent on fMSE.
def method2(Xtilde, y):
    w = gradientDescent(Xtilde, y)
    return w


# Given a design matrix Xtilde and labels y, train a linear regressor for Xtilde and y using gradient descent on fMSE
# with regularization.
def method3(Xtilde, y):
    ALPHA = 0.1
    w = gradientDescent(Xtilde, y, ALPHA)
    return w


# Helper method for method2 and method3.
def gradientDescent(Xtilde, y, alpha=0.):
    learningrate = 0.003
    iter = 5000
    imgNum = y.shape[0]
    pixelNum = Xtilde.shape[0]
    wcurr = (np.random.randn(pixelNum) * 0.01).T

    for e in range(iter):
        trans = np.dot(Xtilde.T, wcurr) - y
        pd = (np.dot(Xtilde, trans)) / imgNum + (alpha / imgNum) * (np.append(wcurr[0:2304], [0]))  # partial derivative
        wcurr = wcurr - learningrate * pd  # update the current w

    return wcurr


if __name__ == "__main__":
    # Load data
    Xtilde_tr = reshapeAndAppend1s(np.load("age_regression_Xtr.npy"))#training
    ytr = np.load("age_regression_ytr.npy")
    Xtilde_te = reshapeAndAppend1s(np.load("age_regression_Xte.npy"))#testing
    yte = np.load("age_regression_yte.npy")

    print("Method 1")
    w1 = method1(Xtilde_tr, ytr)
    m1trmse=fMSE(w1, Xtilde_tr, ytr)
    print(m1trmse)
    m1temse=fMSE(w1, Xtilde_te, yte)
    print(m1temse)
    plt.imshow(w1[0:2304].reshape(48,48));
    plt.savefig("w1.png")

    print("     ")
    print("Method 2")
    w2 = method2(Xtilde_tr, ytr)
    m2trmse = fMSE(w2, Xtilde_tr, ytr)
    print(m2trmse)
    m2temse = fMSE(w2, Xtilde_te, yte)
    print(m2temse)
    plt.imshow(w2[0:2304].reshape(48, 48));
    plt.savefig("w2.png")

    print("     ")
    print("Method 3")
    w3 = method3(Xtilde_tr, ytr)
    m3trmse = fMSE(w3, Xtilde_tr, ytr)
    print(m3trmse)
    m3temse = fMSE(w3, Xtilde_te, yte)
    print(m3temse)
    plt.imshow(w3[0:2304].reshape(48, 48));
    plt.savefig("w3.png")


    #find RMSE
    print("     ")
    print("RMSE Value:")
    rmse = np.sqrt(fMSE(w3, Xtilde_te, yte))
    print(rmse)

    yhat = np.dot(Xtilde_te.T, w3)

    indices = np.absolute(yhat.T - yte.T)
    varimages=np.argsort(indices)
    ourimg=varimages[-5:]
    imgs = np.load("age_regression_Xte.npy")

    yhat1=yhat[ourimg[0]]
    yte1=yte[ourimg[0]]
    yhat2 = yhat[ourimg[1]]
    yte2 = yte[ourimg[1]]
    yhat3 = yhat[ourimg[2]]
    yte3 = yte[ourimg[2]]
    yhat4 = yhat[ourimg[3]]
    yte4 = yte[ourimg[3]]
    yhat5 = yhat[ourimg[4]]
    yte5 = yte[ourimg[4]]

    finalyaht=[yhat1,yhat2,yhat3,yhat4,yhat5]
    finalyte=[yte1,yte2,yte3,yte4,yte5]
    print("     ")
    print("yhat values")
    print(finalyaht)
    print("     ")
    print("y values")
    print(finalyte)

    #show the images with the most egregious errors
    plt.imshow(imgs[ourimg[0]], cmap='gray', interpolation='nearest');
    plt.savefig('im1.png')

    plt.imshow(imgs[ourimg[1]], cmap='gray', interpolation='nearest');
    plt.savefig('im2.png')

    plt.imshow(imgs[ourimg[2]], cmap='gray', interpolation='nearest');
    plt.savefig('im3.png')

    plt.imshow(imgs[ourimg[3]], cmap='gray', interpolation='nearest');
    plt.savefig('im4.png')

    plt.imshow(imgs[ourimg[4]], cmap='gray', interpolation='nearest');
    plt.savefig('im5.png')


    # print(Xtilde_tr.shape)
    # print(Xtilde_tr[0:5])
    # print(Xtilde_tr[-5])

    # Report fMSE cost using each of the three learned weight vectors
    # ...
