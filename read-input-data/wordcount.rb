TEXT_FILE = "file.txt"

# Loading the words
def words_from_file(text_file)
      File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
    rescue 
      puts "Give me #{text_file} and let's try again"
      exit
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)

# Create a disctionary of word counts
WORD_COUNT = {}
  words.each do |w|
    WORD_COUNT[w] = 0 unless WORD_COUNT[w] # If the word is not in the dictionary, add it
    WORD_COUNT[w] += 1 # Increment the count for the word
  end

  # Show the most frequent words
  WORD_COUNT.sort_by {|word, count| count}
  .reverse[0...40]
  .each {|word, count| puts "#{word}: #{count}"
  }