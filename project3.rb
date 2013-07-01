=begin
	
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600,851,475,143 ?

6
1 6
2 3
3 2
4 x 
5 x 
6 x 

5
5 % 1 = 0
	
=end

@factarray = []

def prime(number)
	factor = 1 
	while factor <= number 
		if number % factor == 0 
			@factarray << factor 
		end
		factor += 1 
	end
end

@factarray.each {|x| x%3==0}

prime(600851475143)
puts @factarray.last




#prime factors 1 and its self 