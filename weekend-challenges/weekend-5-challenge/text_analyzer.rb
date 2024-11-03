# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

=begin 
 try using Ruby methods
 it's similar to using a function in js
 look up function/method `read_text_from_file` as an example
 structure: 
 def method_name
    logic of method goes in here
 end

=end

# logic for text_analyzer requirments go here:
  # Count the number of words in the text
  def count_words(text)
    text.split(/\s+/).size
  end
  
  # Count the number of characters in the text
  def count_characters(text)
    text.length
  end
  
  # Count the number of paragraphs in the text
  def count_paragraphs(text)
    text.split(/\n\n+/).size
  end
  
  # Create a frequency hash for each word
  def word_frequencies(text)
    words = text.downcase.scan(/\b[\w']+\b/)
    frequencies = Hash.new(0)
  
    words.each { |word| frequencies[word] += 1 }
    frequencies
  end
  
  # Identify the most common word
  def most_common_word(frequencies)
    frequencies.max_by { |_, count| count }
  end
  
  # Sort and get the top n frequent words
  def top_n_words(frequencies, n = 10)
    frequencies.sort_by { |_, count| -count }.first(n)
  end
  
  # Analyze a text file
  def analyze_text(filename)
    text = read_text_from_file(filename)
  
    word_count = count_words(text)
    character_count = count_characters(text)
    paragraph_count = count_paragraphs(text)
    frequencies = word_frequencies(text)
    common_word, common_word_count = most_common_word(frequencies)
    top_words = top_n_words(frequencies)

# puts statements to console go here:
puts "Analyzing text from '#{filename}':"
puts "Word count: #{word_count}"
puts "Character count: #{character_count}"
puts "Paragraph count: #{paragraph_count}"
puts "Most common word: '#{common_word}' (#{common_word_count} times)"
puts "Top 10 most common words:"
top_words.each { |word, count| puts "  '#{word}': #{count} times" }
puts "-" * 40 # Separator for readability
end

# Analyze the sample text
filename = 'test.txt' # Replace with your text file
text = read_text_from_file(filename)

puts 'this is a test'
# use `text` ^ to pass as a parameters to your methods