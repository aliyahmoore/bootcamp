# Task 1: Arrays

# Create an array named fruits
fruits = ["apple", "banana", "cherry", "date", "fig", "grape"]

# Print the entire array
puts "Entire array: #{fruits}"

# Print the first and last elements of the array
puts "First element: #{fruits.first}"
puts "Last element: #{fruits.last}"

# Add "kiwi" to the end of the array
fruits << "kiwi"

# Remove "cherry" from the array
fruits.delete("cherry")

# Print the modified array
puts "Modified array: #{fruits}"

# Check if "apple" is in the array and print the result
puts "Is 'apple' in the array? #{fruits.include?("apple")}"

# Calculate and print the total number of fruits in the fruits array
puts "Total number of fruits: #{fruits.length}"

# Create a hash named student
student = {
  "name" => "John Smith",
  "age" => 25,
  "major" => "Computer Science"
}

# Print the entire hash
puts "Entire hash: #{student}"

# Print only the value associated with the "name" key
puts "Name: #{student["name"]}"

# Add a new key-value pair to the hash: "gpa" => 3.7
student["gpa"] = 3.7

# Update the "age" value to 26
student["age"] = 26

# Print the modified hash
puts "Modified hash: #{student}"

# Check if the hash contains a key "gender" and print the result
puts "Does the hash contain the key 'gender'? #{student.key?("gender")}"
