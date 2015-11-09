def hs(n):
    print(n)
    a=1
    while (n != 1):
        if (n%2 is 0):
            n = (n//2)
        else:
            n = 3*n+1
        print(n)
        a = a+1
        
    print(a)
