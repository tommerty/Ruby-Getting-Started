TEXT_FILE = "file.txt"
REFERENCE_TEXT_FILE = "reference.txt"

# Loading the words
def words_from_file(text_file)
      File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
        puts "ERROR: Ensure you have two files; file.txt and reference.txt inside the root of this folder, and try again!"
        exit
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)
words_to_remove = words_from_file(REFERENCE_TEXT_FILE).uniq

# Remove the words that also appear in the reference text
words_to_remove.each do |word|
    words.delete word
end

# Create a disctionary of word counts
WORD_COUNT = {}
words.each do |word|
    WORD_COUNT[word] = 0 unless WORD_COUNT[word] # If the word is not in the dictionary, add it
    WORD_COUNT[word] += 1 # Increment the count for the word
end

# Show the most frequent words
puts "Top 40 most frequent words that don't appear in #{REFERENCE_TEXT_FILE}:\n\n"
WORD_COUNT.sort_by {|word, count| count}
.reverse[0...100]
.each {|word, count| puts "#{word} = #{count} times"}
puts "\nSUMMARY\n\n#{TEXT_FILE} has #{words_from_file(TEXT_FILE).uniq.length} unique words that don't appear in #{REFERENCE_TEXT_FILE}"