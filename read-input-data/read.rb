# snake case for variables
# Uppercase first letter for constants
# snake case for methods
# camel case for classes
# snake case for files
# snake case for directories
# snake case for gems

romeo_and_juliet.class # => String
romeo_and_juliet.methods # => Array

FILE_NAME = 'romeo-juliet.txt' # constant
romeo_and_juliet = File.read(FILE_NAME) # variable

# romeo_and_juliet.downcase # => changes the string to lowercase

# romeo_and_juliet.downcase! # => changes the string to lowercase and saves it

# romeo_and_juliet.gsub("\n", " ") # => replaces all new lines with a space

romeo_and_juliet.downcase.gsub(/[^a-z]/, " ").split

# single quotes are taken literally
# double quotes are interpreted
a = 41 # => 41
puts "The answer is #{a + 1}" # => The answer is 42

puts 'The answer is #{a + 1}' # => The answer is #{a + 1}


TEXT_FILE = 'romeo-juliet.txt'
words = File.read(TEXT_FILE).downcase.gsub(/[^a-z]/, " ").split


# Functions / methods. Functions don't exist in Ruby. Methods do.
def words_from_file (text_file)
        File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end
words = words_from_file("romeo-juliet.txt") 

#array
a = [42, "fortytwoo", 42.0] # => [42, "fortytwoo", 42.0]
a[0] # => 42
a[1] # => "fortytwoo"
a[2] # => 42.0

alphabet = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z]
alphabet[0] # => A
alphabet[1] # => B
alphabet[-2] # => Y
alphabet[0..4] # => [A, B, C, D, E]
alphabet[0..] # => [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z]
alphabet.length # => 26

#hash
h = {"key1" => "value1", "key2" => "value2", "key3" => "value3", 10 => 9.9}
h["another_key"] = "another_value"

word_count = {}
