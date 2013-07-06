# Project Euler Problem 1 
# Solved 

x  = 1
arr = []

while x < 1000
  arr << x  if x % 3 == 0 || x % 5 == 0
  x+=1
end

sum = 0
arr.each do |num|
  sum += num
end

puts sum



