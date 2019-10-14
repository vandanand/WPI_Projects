import numpy as np
from skimage import transform, util
from scipy import ndimage
import matplotlib.pyplot as plt


def append1s(faces):
    a = np.ones(faces.shape[0])
    return np.vstack((faces.T, a)).T

def regression(X,y):
    wvec = np.random.normal(0, 0.1, (10, 785))
    mbsize=100
    imgNum=X.shape[0]

    for epoch in range (100):
        for i in range (int(imgNum/100)):
            xbatch=X[i*mbsize:(i+1)*mbsize]
            ybatch = y[i * mbsize:(i + 1) * mbsize]
            z=np.dot(wvec,xbatch.T)
            yhat=softmax(z)
            diff=yhat-ybatch
            gradient=(np.dot(xbatch.T,diff)/mbsize).T
            wvec=wvec-gradient*0.1
        if (epoch>=80):
            testRegression(X,y,wvec)
    return wvec

def softmax(z):
    e_x = np.exp(z)
    out = (e_x / np.sum(e_x, axis=0)).T
    return out

def fPC(y, yhat):
    index=np.argmax(yhat,axis=1)
    index2=np.argmax(y,axis=1)
    return np.mean(index == index2)

def CE(y,yhat):
    return -np.sum(np.multiply(y,np.log(yhat)))/(y.shape[0])

print("Training data")
def testRegression(Xte,Yte,W):

    predictions = softmax(np.dot(W, Xte.T))

    print("----------------------")
    my_fpc = fPC(Yte, predictions)
    print(my_fpc)

    my_CE = CE(Yte, predictions)
    print(my_CE)


#Part b
def transformations(newX):

    #number of images = 5000
    num = newX.shape[0]

    # rotate
    imgRotate=[]
    for i in range(num):
        imgRotate.append(transform.rotate(newX[i],20))
    newRotated=np.array(imgRotate)

    plt.imshow(newRotated[10])
    plt.savefig('rotate.png')

    # scale by 0.8
    imgScale=[]
    for i in range(num):
        imgScale.append(transform.rescale(newX[i],0.8,anti_aliasing=True))
    newScaled = np.array(imgScale)

    plt.imshow(newScaled[10])
    plt.savefig('scale.png')

    #translate by 3 to the right
    imgTranslate = []
    for i in range(num):
        imgTranslate.append(ndimage.interpolation.shift(newX[i], 3))
    newTranslated = np.array(imgTranslate)

    plt.imshow(newTranslated[10])
    plt.savefig('translate.png')

    #random noise
    imgRandomNoise = []
    newData = imgRotate+imgScale+imgTranslate
    for i in range(num):
        imgRandomNoise.append(util.random_noise(newData[i]))
    finalTrans = np.array(imgRandomNoise)+newX

    plt.imshow(finalTrans[10])
    plt.savefig('noise.png')

    return finalTrans

if __name__ == "__main__":
    # Load data
    Xtre = append1s(np.load("small_mnist_train_images.npy"))#training
    ytre = np.load("small_mnist_train_labels.npy")
    Xte = append1s(np.load("small_mnist_test_images.npy"))#testing
    yte = np.load("small_mnist_test_labels.npy")

    #Part a
    perm=np.random.permutation(Xtre.shape[0])
    shuffled_Xtre=Xtre[perm]
    shuffled_ytre=ytre[perm]

    wvec= (regression(shuffled_Xtre,shuffled_ytre))

    testRegression(Xte,yte,wvec)
    print("Testing Data")

    #Part b
    transX = (np.load("small_mnist_train_images.npy")) #5000 x 784
    newX=np.reshape(transX,(transX.shape[0],28,28)) #5000 x 28 x28
    plt.imshow(newX[10])
    plt.savefig('original.png')

    finalTrans=transformations(newX)

    face5000=finalTrans.reshape(finalTrans.shape[0],-1) #5000 x 784

    trans_perm = np.random.permutation(face5000.shape[0])
    shuffled_final = face5000[trans_perm]
    shuffled_ytre = ytre[trans_perm]


    wvec = regression(append1s(shuffled_final), shuffled_ytre)

    trans_predictions = softmax(np.dot(wvec, Xte.T))

    print("      ")
    print("Transformed Data")
    trans_fpc = fPC(yte, trans_predictions)
    print(trans_fpc)

    trans_CE = CE(yte, trans_predictions)
    print(trans_CE)

