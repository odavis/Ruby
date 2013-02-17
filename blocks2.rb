array = [1,2,3,4,5]


array.each {|x| puts "The number is #{x}"
	x *=2
	}

puts array.inspect