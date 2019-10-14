
for i in range(1,79): #base
	for k in range(1,79): #exponent
		ans = (i**k) % 79
		if ans == 1:
			print(i,k)
			if k is 78: print("generator")
			break
