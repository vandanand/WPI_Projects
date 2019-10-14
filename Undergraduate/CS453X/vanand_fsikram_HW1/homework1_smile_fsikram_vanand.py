
import numpy as np
import matplotlib.patches as patches
import matplotlib.pyplot as plt


def fPC(y, yhat):
    return np.mean(y == yhat)


def measureAccuracyOfPredictors(predictors, X, y):
    gx = np.zeros(y.shape)
    for i in range(len(predictors)):
        point1 = predictors[i][0]
        point2 = predictors[i][1]
        results = X[:, point1[0], point1[1]] > X[:, point2[0], point2[1]]
        gx = gx + results
    gx = gx / len(predictors)
    gx = gx > 0.5
    return fPC(y, gx)


def stepwiseRegression(trainingFaces, trainingLabels, testingFaces, testingLabels):
    show = True
    # topfive is a local variable.
    # featureChoosing
        #print("topfive")
        #print(topfive)

    #print("training accuracies")
    for s in range(5):
        print(400 + s * 400)
        topfive = []
        for k in range(5):
            bestPredictor = [(0, 0), (0, 0)]  # stores the latest prediction
            topfive.append(bestPredictor)
            max = 0
            #print(k)
            for i in pixels:
                for j in pixels:
                    predictor = [i, j]
                    if (predictor not in topfive):
                        topfive[k] = predictor
                        # Using what is already picked in topfive, pickup the next one.
                        temp = measureAccuracyOfPredictors(topfive, trainingFaces, trainingLabels)
                        if (temp > max):
                            max = temp
                            #                        print( max )
                            bestPredictor = predictor

            topfive[k] = bestPredictor

        #print(topfive)
        PCTraining = measureAccuracyOfPredictors(topfive, trainingFaces[0:400 + s * 400, :, :], trainingLabels[0:400 + s * 400, ])

        PCTesting = measureAccuracyOfPredictors(topfive, testingFaces[0:400 + s * 400, :, :], testingLabels[0:400 + s * 400, ])

        print("Training Accuracies")
        print(PCTraining)
        print("Testing Accuracies")
        print(PCTesting)
    #PC = measureAccuracyOfPredictors(topfive, trainingFaces, trainingLabels)
    #print(PC)

    # print("testing accuracies")
    # for s in range(5):
    #     PC = measureAccuracyOfPredictors(topfive, testingFaces[0:400 + s * 400, :, :], testingLabels[0:400 + s * 400, ])
    #     print(PC)

    if show:
        # Show an arbitrary test image in grayscale
        im = testingFaces[0, :, :]
        fig, ax = plt.subplots(1)
        for m in range(5):
            ax.imshow(im, cmap='gray')
            # Show r1,c1
            rect = patches.Rectangle(topfive[m][0], 1, 1, linewidth=2, edgecolor='r', facecolor='none')
            ax.add_patch(rect)
            # Show r2,c2
            rect = patches.Rectangle(topfive[m][1], 1, 1, linewidth=2, edgecolor='b', facecolor='none')
            ax.add_patch(rect)
            # Display the merged result
        plt.show()


    return topfive


def loadData(which):
    faces = np.load("{}ingFaces.npy".format(which))
    faces = faces.reshape(-1, 24, 24)  # Reshape from 576 to 24x24
    labels = np.load("{}ingLabels.npy".format(which))
    return faces, labels


if __name__ == "__main__":
    testingFaces, testingLabels = loadData("test")
    trainingFaces, trainingLabels = loadData("train")
# THe top five predictor holder
topfive = []
# The resulting values of the predictors.
topfivePreds = []
# All the pixels of the image.
pixels = []
# position=0
# loading pixels as tuples.
accumulatedResults = []
for i in range(0, 24):
    for j in range(0, 24):
        pixels.append((i, j))
# The greedy regression algorithm.
# Feature selection.
ans = stepwiseRegression(trainingFaces, trainingLabels, testingFaces, testingLabels)
print(ans)

# testing the fPC function
# a=np.array([1,1,0,1,1])
# b=np.array([1,1,0,1,0])
# c=np.array([1,0,0,1,0])
# training=np.array([1,1,0,0,0])
# print(measureAccuracyOfPredictors(topfive, a, training))
# topfive.append(1)
# topfivePreds.append(a)
# print(measureAccuracyOfPredictors(topfive, a, training))
# topfive.append(1)
# topfivePreds.append(b)
# print(measureAccuracyOfPredictors(topfive, a, training))
# tested

# final=(a+b+c)/3
# print(final)
# print(final.shape)
# step1=final>0.5
# print(step1)
# print("training")
# print(training)
# print(training==step1)
# print(([]+[1])
# print(np.mean((np.array([True, False, True]) == np.array([1, 0, 1]))))

