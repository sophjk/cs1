def hs(n):
    a=1
    while (n != 1):
        print(n)
        if (n%2 is 0):
            n = (n//2)
        else:
            n = 3*n+1
        a = a+1
        print(n)
    print(a)
