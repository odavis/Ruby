#Multiples of 3 and 5
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
#The sum of these multiples is 23. 
#Find the sum of all the multiples of 3 or 5 below 1000.

x  = 0
arr = []
while x <= 10
  if x % 3 == 0 || x % 5 == 0
    arr << x 
    x+=1
  end


