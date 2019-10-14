import math as math
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import scipy.optimize


NUM_INPUT = 784  # Number of input neurons
NUM_OUTPUT = 10  # Number of output neurons
NUM_CHECK = 5  # Number of examples on which to check the gradient
NUM_HIDDEN = 40 # Number of hidden layers


def loadData (which):
    images = np.load("mnist_{}_images.npy".format(which))
    labels = np.load("mnist_{}_labels.npy".format(which))
    return images.T, labels.T

def unpack (w,numhidden):

    initial1 = NUM_INPUT * numhidden
    initial2 = initial1 + numhidden
    initial3 = initial2 + numhidden*NUM_OUTPUT
    initial4 = initial3 + NUM_OUTPUT

    W1 = w[0:initial1].reshape(numhidden, NUM_INPUT)
    b1 = w[initial1:initial2].reshape(numhidden, 1)
    W2 = w[initial2:initial3].reshape(NUM_OUTPUT, numhidden)
    b2 = w[initial3:initial4].reshape(NUM_OUTPUT, 1)

    return W1, b1, W2, b2

# Given individual weights and biases W1, b1, W2, b2, concatenate them and
# return a vector w containing all of them.
# This is useful for performing a gradient check with check_grad.
def pack (W1, b1, W2, b2):
    return np.concatenate((W1.flatten(), b1.flatten(), W2.flatten(), b2.flatten()))


def fPC(y, yhat):
    index=np.argmax(yhat,axis=0)
    index2=np.argmax(y,axis=0)
    return np.mean(index == index2)

def softmax(z):
    e_x = np.exp(z)
    out = (e_x / np.sum(e_x, axis=0))
    return out

def relu(x):
    X = np.copy(x)
    X[X <= 0] = 0
    return X

def derivRelu(x):
    X=np.copy(x)
    X[X <= 0] = 0
    X[X > 0] = 1
    return X

def fCE(X,Y,w,numhidden):
    yhat, z1, h1 = forwardProp(X, w,numhidden)
    cost= - np.sum(Y * np.log(yhat)) / Y.shape[1]
    return cost, yhat

def gradCE (X, Y, w,numhidden, alpha1=0.0, alpha2=0.0, beta1=0.0, beta2=0.0):
    yhat, z1, h1 = forwardProp(X, w,numhidden)
    wgrad = backProp(X, yhat, Y, w, z1, h1,numhidden, alpha1, alpha2, beta1, beta2)
    return wgrad

def forwardProp(X,w,numhidden):
    w1, b1, w2, b2 = unpack(w,numhidden)
    z1 = w1.dot(X) + b1
    h1 = relu(z1)
    z2 = w2.dot(h1) + b2
    yhat = softmax(z2)
    return yhat, z1, h1

def backProp(X, yhat, y, w, z1, h1,numhidden, alpha1, alpha2, beta1, beta2):
    w1, b1, w2, b2 = unpack(w,numhidden)

    gradb2 = np.mean(yhat - y, axis=1)
    gradW2 = ((yhat - y).dot(h1.T)+alpha2*w2+beta2*np.sign(w2)) / X.shape[1]

    gT = (yhat - y).T.dot(w2) * derivRelu(z1.T)

    gradb1 = np.mean(gT.T, axis=1)
    gradW1 = (gT.T.dot(X.T)+alpha1*w1+beta1*np.sign(w1)) / X.shape[1]

    return pack(gradW1,gradb1,gradW2,gradb2)


def train(trainX, trainY, numhidden, learning_rate=.2, minibatch=16, epochs=30, regstrength=0.01, doprint=False):
    perm = np.random.permutation(trainX.shape[1])
    shuffledX = trainX[:, perm]
    shuffledY = trainY[:, perm]

    # Initialize weights randomly
    W1 = 2 * (np.random.random(size=(NUM_INPUT, numhidden)) / NUM_INPUT ** 0.5) - 1. / NUM_INPUT ** 0.5
    b1 = 0.01 * np.ones(numhidden)
    W2 = 2 * (np.random.random(size=(numhidden, NUM_OUTPUT)) / numhidden ** 0.5) - 1. / numhidden ** 0.5
    b2 = 0.01 * np.ones(NUM_OUTPUT)

    w = pack(W1, b1, W2, b2)

    imgNum = trainY.shape[1]

    pc = 0

    #regularization
    alpha1 = regstrength
    alpha2 = regstrength
    beta1 = regstrength
    beta2 = regstrength

    for e in range(epochs):
        for batch in range(int(imgNum / minibatch)):
            Xbatch = shuffledX[:,batch*minibatch:(batch+1)*minibatch]
            Ybatch = shuffledY[:,batch*minibatch:(batch+1)*minibatch]
            wgrad = gradCE(Xbatch, Ybatch, w, numhidden, alpha1, alpha2, beta1, beta2)
            w=w-wgrad*learning_rate
        cross, yhat = fCE(trainX, trainY, w,numhidden)
        pc = fPC(trainY, yhat)

        if e >= epochs - 20 and doprint:
            print("*** Epoch " + str(e + 1) + " Statistics  ***")
            print("FPC = " + str(pc))
            print("Cross Entropy = " + str(cross))
            print()

    return w, pc

def testing(testX, testY, w,numhidden):
    crossEntropyVal,yhat = fCE(testX, testY, w, numhidden)
    pc = fPC(testY, yhat)

    print("Final Test")
    print("FPC value: ", pc)
    print("Cross Entropy: ", crossEntropyVal)

    pass

def findBestHyperparameters(trainX, trainY, testX, testY, w, valX, valY):
    print("Hyperparameters")
    neurons = [30,40,50]
    learning_rate=[0.001,0.005,0.01,0.05,0.1,0.5]
    minibatch=[16,32,64,128,256]
    epochs=[20,30,40,50]
    reg_strength=[0.1, 0.01, 0.001]

    bestpc=0
    bestneurons=0
    bestlearningrate=0
    bestminibatches=0
    bestepochs=0
    bestregstrength=0

    for i in range(10):

        neurons_c = neurons[int(np.random.rand()*3)]
        learning_rate_c=learning_rate[int(np.random.rand()*6)]
        minibatch_c=minibatch[int(np.random.rand()*5)]
        epochs_c=epochs[int(np.random.rand()*4)]
        reg_strength_c=reg_strength[int(np.random.rand()*3)]

        print("RUNNING VALIDATION", i)
        w,pc = train (trainX, trainY, neurons_c, learning_rate_c, minibatch_c, epochs_c, reg_strength_c)


        cross, yhat = fCE(valX, valY, w,neurons_c)
        pc = fPC(valY, yhat)

        print("FPC value: ", pc)
        print("Cross Entropy: ", cross)

        if pc > bestpc:
            bestpc=pc
            bestneurons=neurons_c
            bestlearningrate=learning_rate_c
            bestminibatches=minibatch_c
            bestepochs=epochs_c
            bestregstrength=reg_strength_c

            print("Best Values So Far: ")
            print("PC: ", bestpc)
            print("Neurons: ", bestneurons)
            print("Learning Rate: ", bestlearningrate)
            print("Minibatches: ", bestminibatches)
            print("Epochs: ", bestepochs)
            print("Regularization Strength: ", bestregstrength)

    w = train(trainX, trainY, bestneurons, bestlearningrate, bestminibatches, bestepochs, bestregstrength, doprint=True)[0]

    #final test
    finalw=testing(testX, testY, w, bestneurons)

    return finalw

if __name__ == "__main__":
    # Load data
    if "trainX" not in globals():
        trainX, trainY = loadData("train")
        testX, testY = loadData("test")

    valX = np.load("mnist_validation_images.npy").T
    valY = np.load("mnist_validation_labels.npy").T

    # Initialize weights randomly
    W1 = 2*(np.random.random(size=(NUM_INPUT, NUM_HIDDEN))/NUM_INPUT**0.5) - 1./NUM_INPUT**0.5
    b1 = 0.01 * np.ones(NUM_HIDDEN)
    W2 = 2*(np.random.random(size=(NUM_HIDDEN, NUM_OUTPUT))/NUM_HIDDEN**0.5) - 1./NUM_HIDDEN**0.5
    b2 = 0.01 * np.ones(NUM_OUTPUT)


    w = pack(W1, b1, W2, b2)

    # Check that the gradient is correct on just a few examples (randomly drawn).
    idxs = np.random.permutation(trainX.shape[0])[0:NUM_CHECK]
    randX=trainX.T[idxs,:].T
    randY = trainY.T[idxs, :].T
    print(scipy.optimize.check_grad(lambda w_: fCE(np.atleast_2d(randX), np.atleast_2d(randY), w_,NUM_HIDDEN)[0], \
                                    lambda w_: gradCE(np.atleast_2d(randX), np.atleast_2d(randY), w_,NUM_HIDDEN), \
                                    w))


    w1, pc = train(trainX, trainY,NUM_HIDDEN)

    wb = findBestHyperparameters(trainX, trainY, testX, testY, w1, valX, valY)


