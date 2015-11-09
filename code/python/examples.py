
# conditional

if (True):
    x = 0
    z = 10
else:
    x = 1
    z = 11

#WHY ISN'T THE FOLLOWING CODE WORKING?
#if (x > 0 v y == 6):
   # x = 0
   # z = 10
    
#else:
#    x = 1
#   z = 11

#Iteration

times = 10
while (times > 0):
    print ("Yo")
    times = (times - 1)

#procedures and procedure calls

def fun(a, b, c, x):
    result = a * (x*x) + b * x + c
    return result
