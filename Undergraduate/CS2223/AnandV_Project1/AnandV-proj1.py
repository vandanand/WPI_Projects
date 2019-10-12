import time

"""Euclidean Algorithm"""
def euclid(m, n):
    while n != 0:
        r = m % n
        m = n
        n = r
    return m

"""Consecutive Integer Checking Algorithm"""    
def CIC(m, n):
    t = min(m, n)
    while (t > 0):
        if m % t == 0 and n % t == 0:
            return t
        else: t= t-1

"""Middle School Procedure"""
def MSP(m, n):
 d = 2
 commonfactors = [ ]
 pmfactors = [ ]
 pnfactors = [ ]
 while m > 1:
     if m % d == 0:
         pmfactors.append(d)
         m = m/d
     else:
         d = d + 1
         
 d=2
 while n > 1:       
     if n % d == 0:
         pnfactors.append(d)
         n = n/d
     else:
         d = d + 1

 for element in pmfactors:
     if element in pnfactors:
         commonfactors.append(element)
         pnfactors.remove(element)

 result = 1
 for element in commonfactors:
     result = element*result
 return result

def GCD(m, n):
    start_time = time.time()
    gcd = euclid(m,n)
    stop_time = time.time() - start_time
    print("Euclid -> GCD: %d which took %.9f seconds" %(gcd, stop_time))
    
    start_time = time.time()
    gcd = CIC(m, n)
    stop_time = time.time() - start_time
    print("CIC    -> GCD: %d which took %.9f seconds" %(gcd, stop_time))

    start_time = time.time()
    gcd = MSP(m, n)
    stop_time = time.time() - start_time
    print("MSP    -> GCD: %d which took %.9f seconds" %(gcd, stop_time))

    print("")

"""User Interface"""
def main():

    print("")
    print("This program finds the GCD of two user-inputted numbers using three algorithms: Euclid, Consecutive Integer Checking (CIC), and Middle School Procedure (MSP)")
    print("")
    m = int(input("Enter the first number: "))
    n = int(input("Enter the second number: "))
    print("")
    
    if(m<=0) or (n<=0):
        for i in range(0,2):
            if (m<=0) or (n<=0):
                    print("You have entered an illegal input. The two numbers must be greater than zero. You may try a total of 3 times.")
                    print("")
                    m = int(input("Enter the first number: "))
                    n = int(input("Enter the second number: "))
            else: 
                GCD(m, n)
                break
        print("")
        print("Goodbye!")
    else:
        GCD(m,n)
        
main()

            
            
        
