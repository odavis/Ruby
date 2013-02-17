=begin
Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year. 
Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. 
For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. 
And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.
=end

class OrangeTree
	def initialize
		@height = 0
		@age = 0 
		@alive = true  
	end

	def height
		if @alive == true
			if @height == 0 
				puts "Not enough time has passed for the tree to grow."
			else
				puts "The orange tree has grown to #{@height} feet all"
			end
		else
			abort ("The orange tree has died")
		end
	end

	def age
		#ages the tree a year 
		#after x years tree dies
		#no fruit for x years
		#older trees produce more fruit 
		if @age >= 5 
			@alive = false  
			abort ("The orange tree has died due to old age")
		elsif @age == 0
			puts "The tree has not been aged. Age the tree"
		else
			@height += 1
			@age += 1
			@orange = 0 
		end
		puts "The orange tree is #{@age} years old"
	end

	def count
		#count the number of organges 
		if @alive == true
			@oranges = 5
			puts "There are #{@oranges} oranges on the tree"
		else
			abort ("The orange tree has died")
		end
	end

	def pick(num)
		if @alive == true
			if @oranges > 0 
				@oranges -= num
				puts "You have picked #{num} oranges off the tree. #{@oranges} are left to pick"
			end
		else 
			abort ("The orange tree has died")
		end
	end
end

tree = OrangeTree.new 
#2.times {tree.age}
puts tree.height 
puts tree.age
puts tree.count 
puts tree.pick(3)
puts tree.pick(3)

