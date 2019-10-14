from sklearn.svm import SVC
from sklearn.svm import LinearSVC
import numpy as np
import pandas
from sklearn import metrics

#Linear SVM Solution: 0.860043596410432
#Polynomial SVM solution: 0.8428389924113101

#A function to split training and test sets.
def split_train_test(data, test_ratio):
    elements=data.shape[0] #number of data elements
    shuffled_indices = np.random.permutation(elements)
    test_set_size = int(elements * test_ratio)
    test_indices = shuffled_indices[:test_set_size] #get first 100K
    train_indices = shuffled_indices[test_set_size:] #get last 100K
    return data.iloc[ train_indices], data.iloc[ test_indices]

#bagging without replacement <= the one that we use in this assignment
def bagging (clf,sample_size,Xtrain,Ytrain, Xtest):
    yscore=np.zeros(Ytrain.shape)
    num_estimators= int(Xtrain.shape[0]/sample_size)
    for i in range (num_estimators):
        #mask=np.random.permutation(Xtrain.shape[0])#randomize the number from 0-100,000
        #mask=mask[i*sample_size: (i+1)*sample_size]#grab the sample of the desired size (i.e this might be a 100)
        #apply this mask Xtrain and Ytrain
        xtr_curr=Xtrain[i*sample_size: (i+1)*sample_size]
        ytr_curr=Ytrain[i*sample_size: (i+1)*sample_size]
        #do the fit
        clf.fit(xtr_curr,ytr_curr)
        #test it on the entire data set
        yscore=yscore+clf.decision_function(X_test)
        print (i)
    return yscore/num_estimators

# Load data
d = pandas.read_csv('train.csv')
train_set, test_set = split_train_test( d, 0.5)
y_train = np.array(train_set.target)  # Labels
X_train = np.array(train_set.iloc[:,2:])  # Features
y_test = np.array(test_set.target)  # Labels
X_test = np.array(test_set.iloc[:,2:])  # Features

#Linear Bagging SVC
linear_clf=LinearSVC(dual=False, C=10)
y_scores=bagging(clf=linear_clf,sample_size=5000,Xtrain=X_train,Ytrain=y_train, Xtest=X_test)
fpr,tpr,thersholds = metrics.roc_curve(y_test,y_scores)
ans=metrics.auc(fpr,tpr)
print ("Linear SVM solution:")
print(ans)
#Result = 0.860043596410432

#Polynomial SVC
poly_clf=SVC(kernel='poly',C=10)#default is power of 3, default is dual
y_scores=bagging(clf=poly_clf,sample_size=5000,Xtrain=X_train,Ytrain=y_train, Xtest=X_test)
fpr,tpr,thresholds = metrics.roc_curve(y_test,y_scores)
ans=metrics.auc(fpr,tpr)
print ("Polynomial SVM solution:")
print(ans)
#Result = 0.8428389924113101






