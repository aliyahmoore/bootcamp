# Define the array of words to analyze
words = ["level", "elephant", "ruby", "book", "hello"]

# Iterate through each word in the array using a for loop
for word in words
  # Initialize variables for each word
  is_palindrome = true
  contains_e = false
  char_count = 0
  modified_word = word

  # Check if the word is a palindrome and count characters
  for i in 0...word.length
    # Check if the character is 'e'
    if word[i] == 'e'
      contains_e = true
    end

    # Count the total number of characters
    char_count += 1

    # Check if the word is a palindrome
    if word[i] != word[word.length - 1 - i]
      is_palindrome = false
    end
  end

  # Replace 'ruby' with 'Python' if it appears in the word
  if modified_word.include?('ruby')
    modified_word.gsub!('ruby', 'Python')
  end

  puts "Word: #{word}"
  
  if is_palindrome
    puts "- Palindrome: Yes"
  else
    puts "- Palindrome: No"
  end

  # Check for 'e' 
  if contains_e
    puts "- Contains 'e': Yes"
  else
    puts "- Contains 'e': No"
  end

  puts "- Character Count: #{char_count}"
  puts "- After Replacement: #{modified_word}"
end

--list a variable in the words variable
for word in words

    is_palindrome = (word == word.reverse)






  puts "Word: #{word}"
  puts "- Palindrome: #{is_palindrome} ? 'yes' : 'no'"
  if is_panidrome 
    puts "yes"
  else
end