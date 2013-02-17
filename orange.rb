class OrangeTree
	def initialize
		@age = 0
		@height = 0
		@alive = true 
		@fruit = 0 
	end

	def agetree
		if @age >= 25 
			@alive = false
			abort ("The orange tree has died")
		elsif @alive == true
			@age += 1 
			puts "A year has passed the tree is now #{@age} years old"
		end
		@fruit = 0 
	end

	def growtree
		if @alive == true
			if @height > 25
				@height = @height
				puts "The tree has reached its maximum height at #{@height} ft tall"
			else
				@height = @height+((rand(3)+1)*@age)
				puts "The tree is now #{@height} ft tall"
			end	
		else
			abort ("The orange tree has died")
		end	
	end

	def growfruit
		if @alive == true
			@fruit = (@age*(@height*0.3)*(rand(3)+1)).to_i
			puts "There are #{@fruit} oranges on the tree"
		else
			abort ("The orange tree has died")
		end
	end

	def pickfruit(num)
		if @alive == true
			if num <= @fruit 
				@fruit -= num
				puts "You picked #{num} oranges. #{@fruit} oragnes are left to pick" 
			elsif num > @fruit
				puts "You've pick all #{@fruit} on the tree. No fruit left"
			else 
				puts "There is no fruit to pick"
			end
		else
			abort ("The orange tree has died")
		end
	end
end

orangetree = OrangeTree.new

orangetree.agetree
orangetree.growtree
orangetree.growfruit
orangetree.pickfruit(20)
puts

