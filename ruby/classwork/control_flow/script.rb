=begin 
Aliyah and Torshia
=end

# question 1: Create an if/else statement. Make sure to include at least one elsif. Each branch of the statement should print something to the console.

num = 52

if num > 70
    puts "Num is greater than 70"
elsif num < 30
    puts "num is less than"
else 
    puts "num is between 30 and 70"
end

# question 2:  Create an unless statement. The statement should print something to the console.
tired = true

unless tired 
puts "I'm writing Ruby programs!"
else
puts "Time to sleep!"
end

# question 3: We’re letting you know what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using comparators.
# test_1 should be false
test_1 = 5 > 10

# test_2 = should be false
test_2 = 1==2

# test_3 = should be true
test_2 = 5==5

# question 4: Booleans: The code below indicates what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using boolean operators (&&, ||, or !).
# test_1 should be true
test_1 = true && 5 == 5

# test_2 = should be true
test_2 = 5==5 || 1==2

# test_3 = should be false
test_3 = !(5==5)

for num in 1..20 
    puts num
end