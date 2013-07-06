#-Finance Graph is a program that ask for you salary/wage information
#-and names and amounts of expenses.
#-giprogram then tells you shows you a pie chart of income to expenses

puts "#{51.to_i / 5}%"

print "Are you a salary or waged employee? "
payclass = gets.chomp.downcase 

if payclass == "salary"
	print "Enter your yearly salary: $"
	salary = gets.chomp.to_i
elsif payclass == "wage"
	print "What is your hourly wage?"
	wage = gets.chomp.to_i
	print "How many hours per week do you work?"
	hour_per_week = gets.chomp.to_i 
	salary = (wage * hour_per_week * 51)
else
	puts "Please only enter Salary or Wage"
	payclass = gets.chomp.downcase  
end

expense = Hash.new

response = ""
while response != "n"
	print "Enter expense name: "
	expense_name = gets.chomp
	print "The monthly cost: $"
	expense_amount = gets.chomp.to_i
	expense[expense_name] = expense_amount

	print "Would you like to add another expense (y/n) ?"
	response = gets.chomp.to_s 
end

puts

puts "Monthly Expenses:"
puts
expense.each do |name,amount|
	puts "#{name.capitalize}: $#{amount}"
end

monthly_income = salary / 12
puts "Your monthly income is #{monthly_income}"

puts "Your expense represent x of your monthly income"
expense.each do |name,amount|
	puts ((amount/monthly_income)*100).to_s + "%" 
end






