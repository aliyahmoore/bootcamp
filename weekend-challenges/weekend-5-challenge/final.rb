def count_words(text)
    words = text.scan(/\b\w+\b/)
    words.length
end

def analyze_text(filename)
    text = read_text_from_file(filename)

    word_count = count_words(text)
    character_count = count_characters(text)
    puts "Word Count: #{word_count}"
    puts "Chatacter Count: #{character_count}"
    puts "Paragraph Count:  #{paragraph_count}
    puts "Most common word: "#{most_common}" Apppears #{most_common_frequency} times"
    puts "Top Ten Most Common Words:" 
    top_words.each do |word,frequency|
            puts "#{word}" - #{frequency} times"
    end

def count_characters(text)
    text.length
end

def word_frequency_stats(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)

    words.each do |word| 
    words_frequency[word.downcase] += 1
    end
    sorted_word_frequency = word_frequency.sort_by {
        |word, frequency| -frequency #(this reverses)
    }
    sorted_word_frequency[0...10]
end

#method to count paragraphs (redx), and n stands for new line
def count_paragraphs(text)
    paragraphs = text.split("\n\n") 
    paragraph.size 
end

def most_common_word(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)

    words.each do |word| 
    words_frequency[word.downcase] += 1
    end
    
    most_common = word_frequency.max_by{|word, frequency| frequency}
    most_common, most_common_frequency = most_common_word(text)
end



if ARGV.length == 1 
    filename = ARGV[0] #captures first file in array 
    analyze_text(filename) # holds the name of the file 
else
    puts "Usage: ruby script_name.rb <filename>"
end

.class will tell you if it's an array