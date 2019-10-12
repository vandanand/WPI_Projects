import math
import itertools
import ast
import time

# In the following algorithms:
    # C stands for Capacity
    # W stands for Weight
    # V stands for Value

def brute(C, W, V):
    knapsack = []
    n = len(V)
    j = n
    tempWeight = 0
    tempValue = 0
    bestWeight = 0
    bestValue = 0
    tempItems = []
    combo = list(itertools.product([0, 1], repeat=len(W)))
    for i in combo:
        for j in range(0, n):
            if(i[j] == 1):
                tempWeight = tempWeight + W[j]
                tempValue = tempValue + V[j]
                tempItems.append(V[j])
            if(tempWeight <= C and tempValue > bestValue):
                bestWeight = tempWeight
                bestValue = tempValue
                knapsack = tempItems
        tempWeight = 0
        tempValue = 0
        tempItems = []
    return bestValue, knapsack

def dynamic(C, W, V):
    n = len(V)
    items=[]
    table = [[0 for x in range(C+1)] for x in range(n+1)]
    for i in range(n+1):
        for j in range (C+1):
            if i==0 or j==0:
                table[i][j] = 0
            elif W[i-1] <= j:
                table[i][j] = max(V[i-1]+table[i-1][j-W[i-1]], table[i-1][j])
            else:
                table[i][j] = table[i-1][j]
    
    j = C
    i = len(W)
    while i>0:
        if table[i][j] != table[i-1][j]:
            items.append(V[i-1])
            j = j-W[i-1]
        i=i-1
    items.reverse()
    return (table[n][C], items)

def greedy(C, W, V):
    answer = []
    for i in range(0, len(W)):
        answer.append([V[i]/W[i], i])
          
    answer.sort()
    answer.reverse()   
    finalv=[]
    bestv=0
    bestw=0
    finalnum=[0 for x in range(len(W))]
    for j in answer:
        temp = bestw + W[j[1]]
        if(temp <= C):
            finalnum[j[1]]=1
            bestw=temp
            bestv=bestv+V[j[1]]
            finalv.append(V[j[1]])
            
    return bestv, finalv           
        

def main():
    file = open("input.txt", "r")
    C = int(file.readline())
    W = ast.literal_eval(file.readline())
    V = ast.literal_eval(file.readline())

    menu = {}
    menu['1']="Brute Force" 
    menu['2']="Dynamic Programming"
    menu['3']="Greedy Algorithm"
    menu['4']="Exit"
    
    while True:
        options=menu.keys()
        for entry in options: 
          print (entry, menu[entry])

        choice=input("Please Select: ")
        print("")
        if choice =='1': 
          print ("Brute Force")
          print("")
          start_time = time.clock()
          a = brute(C, W, V)
          stop_time = time.clock() - start_time
          print("Answer: ")
          print(a)
          print("Ran in the following number of seconds:")
          print("%.6f"  %(stop_time))
          print("")
        elif choice == '2': 
          print ("Dynamic Programming")
          print("")
          start_time = time.clock()
          b = dynamic(C, W, V)
          stop_time = time.clock() - start_time
          print("Answer: ")
          print(b)
          print("Ran in the following number of seconds:")
          print("%.6f"  %(stop_time))
          print("")
        elif choice == '3':
          print ("Greedy Algorithm: ")
          print("")
          start_time = time.clock()
          c = greedy(C, W, V)
          stop_time = time.clock() - start_time
          print("Answer: ")
          print(c)
          print("Ran in the following number of seconds:")
          print("%.6f"  %(stop_time))
          print("")
        elif choice == '4': 
          break
        else: 
          print ("This option is not valid!")
          print("")

main()
    








