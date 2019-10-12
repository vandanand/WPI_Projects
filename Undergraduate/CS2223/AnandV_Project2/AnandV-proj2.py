import math
import time
import ast
import operator

def distance(p1,p2):
    return math.sqrt(math.pow((p1[0] - p2[0]),2) + math.pow((p1[1] - p2[1]),2))

def Brute_Force(P):
    d = distance(P[0],P[1])
    for i in range(0, len(P)):
        for j in range(0, len(P)):
            if i != j:
                if distance(P[i], P[j]) < d:
                    d = distance(P[i], P[j])
    return d

def Closest_Pair(X):
    P = list(X)
    Q = list(X)

    P.sort()
    Q.sort(key=operator.itemgetter(1))
    return Eff(P, Q)

def Eff(P, Q):
    
    if len(P)<= 3:
        return Brute_Force(P)

    else:
        n=len(P)
        
        if n % 2 == 0:
            midp = math.floor(len(P)/2)
        else:
            midp = math.floor(len(P)/2 + 1)
            
        Pl = []
        Ql = []
        Pr = []
        Qr = []

        for i in range(0, midp):
            Pl.append(P[i])
            Ql.append(Q[i])
        
        for i in range (midp, n):
            Pr.append(P[i])
            Qr.append(Q[i])


        Dl = Eff(Pl, Ql)
        Dr = Eff(Pr, Qr)

        D= min(Dl, Dr)
        m = P[midp-1][0]

        S = []
        for i in Q:
           if abs(i[0] - m) < D:
               S.append(i)

        dminsq = math.pow(D,2)
        for i in range (0, len(S)-1):
            k=i+1
            while k<=len(S)-1 and math.pow((S[k][1] - S[i][1]), 2) < dminsq:
                dminsq = min((math.pow((S[k][0]-S[i][0]),2) + math.pow((S[k][1] - S[i][1]),2)), dminsq)
                k = k+1
            
    return math.sqrt(dminsq)

def main():
    
    with open('input.txt', 'r') as f:
        points = ast.literal_eval(f.read())

    start_time = time.clock()
    bruteforce = Brute_Force(points)
    stop_time = time.clock() - start_time
    print("Brute Force Answer: %.3f which took %.9f seconds" %(bruteforce, stop_time))

    start_time = time.clock()
    merge = Closest_Pair(points)
    stop_time = time.clock() - start_time
    print("Divide & Conquer Answer: %.3f which took %.9f seconds" %(merge, stop_time))

main()

