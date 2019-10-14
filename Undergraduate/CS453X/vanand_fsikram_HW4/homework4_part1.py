from cvxopt import solvers, matrix
import numpy as np
import sklearn.svm
#solvers.options['show_progress'] = False

class SVM453X ():
    def __init__ (self):
        pass

    # Expects each *row* to be an m-dimensional row vector. X should
    # contain n rows, where n is the number of examples.
    # y should correspondingly be an n-vector of labels (-1 or +1).
    def fit (self, X, y):

        #need to append 1s at the end of X
        face = X.reshape(X.shape[0], -1)
        a = np.ones(X.shape[0])
        Xtilda=(np.vstack((face.T, a))) #3x6 for first test
        qpshape=Xtilda.shape[0]

        # TODO change these -- they should be matrices or vectors
        G = (np.multiply(Xtilda,-y)).T #G matrix, same shape as X tilda
        P = np.identity(qpshape) #identity matrix
        q = np.zeros(qpshape) #zero vector (3x1 for first test)
        h = -1*(np.ones(y.shape[0])) #length of y but filled with -1's

        # Solve -- if the variables above are defined correctly, you can call this as-is:
        sol = solvers.qp(matrix(P, tc='d'), matrix(q, tc='d'), matrix(G, tc='d'), matrix(h, tc='d'))
        solx=sol['x']

        w=np.array(sol['x'])[:-1].flatten()
        b=solx[len(solx)-1]

        # Fetch the learned hyperplane and bias parameters out of sol['x']
        self.w = w  # TODO change this
        self.b = b  # TODO change this

    # Given a 2-D matrix of examples X, output a vector of predicted class labels
    def predict (self, x):
        w=self.w
        b=self.b

        ans=np.dot(x,w)+b

        #numbers greater than 0 are set to 1 while numbers less than 0 are set to -1
        ans[ans>0]=1.0
        ans[ans<0]=-1.0
        res=ans.flatten()

        return res # TODO fix

def test1 ():
    # Set up toy problem
    X = np.array([ [1,1], [2,1], [1,2], [2,3], [1,4], [2,4] ])
    y = np.array([-1,-1,-1,1,1,1])

    # Train your model
    svm453X = SVM453X()
    svm453X.fit(X, y)
    print(svm453X.w, svm453X.b)

    # Compare with sklearn
    svm = sklearn.svm.SVC(kernel='linear', C=1e15)  # 1e15 -- approximate hard-margin
    svm.fit(X, y)
    print(svm.coef_, svm.intercept_)

    acc = np.mean(svm453X.predict(X) == svm.predict(X))
    print("Acc={}".format(acc))

def test2 (seed):
    np.random.seed(seed)

    # Generate random data
    X = np.random.rand(20,3)
    # Generate random labels based on a random "ground-truth" hyperplane
    while True:
        w = np.random.rand(3)
        y = 2*(X.dot(w) > 0.5) - 1
        # Keep generating ground-truth hyperplanes until we find one
        # that results in 2 classes
        if len(np.unique(y)) > 1:
            break

    svm453X = SVM453X()
    svm453X.fit(X, y)

    # Compare with sklearn
    svm = sklearn.svm.SVC(kernel='linear', C=1e15)  # 1e15 -- approximate hard margin
    svm.fit(X, y)

    diff = np.linalg.norm(svm.coef_ - svm453X.w) + np.abs(svm.intercept_ - svm453X.b)
    print(diff)

    acc = np.mean(svm453X.predict(X) == svm.predict(X))
    print("Acc={}".format(acc))

    if acc == 1 and diff < 1e-1:
        print("Passed")

if __name__ == "__main__":
    test1()
    for seed in range(5):
        test2(seed)
