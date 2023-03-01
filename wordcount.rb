TEXT_FILE = "romeo-juliet.txt"

# Loading the words
def words_from_file(text_file)
  File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)

# Create a disctionary of word counts
word_count = {}
# For each ford in word_count
    # If the word is new, add it to the word_count
    word_count[word] = 1
    # else increment it's count
    word_count[word] += 1