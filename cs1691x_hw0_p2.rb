# Define a method hello(name) that takes a string representing a name and
# returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end

# Define a method starts_with_consonant?(s) that takes a string and
# returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
  consonant = /^[^aeiou\d\W_]/i
  return true if consonant.match(s)
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true
# if the string represents a binary number that is a multiple of 4.
# NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
  /^[01]+$/.match(s) && s.to_i(2) % 4 == 0 ? true : false
end

# Testing
# hello(name)
raise "hello('Enzo') != 'Hello, Enzo'" unless hello('Enzo') == 'Hello, Enzo'

# starts_with_consonant?(s)
raise "starts_with_consonant?('hello') != true" unless starts_with_consonant?('hello') == true
raise "starts_with_consonant?('Hello') != true" unless starts_with_consonant?('Hello') == true
raise "starts_with_consonant?('#hello') != nil" unless starts_with_consonant?('#hello') == nil
raise "starts_with_consonant?('0hello') != nil" unless starts_with_consonant?('0hello') == nil
raise "starts_with_consonant?('ello') != nil" unless starts_with_consonant?('ello') == nil
raise "starts_with_consonant?('_hello') != nil" unless starts_with_consonant?('_hello') == nil

# binary_multiple_of_4?
raise "binary_multiple_of_4?('') != false" unless binary_multiple_of_4?('') == false
raise "binary_multiple_of_4?('1') != false" unless binary_multiple_of_4?('1') == false
raise "binary_multiple_of_4?('01') != false" unless binary_multiple_of_4?('01') == false
raise "binary_multiple_of_4?('10') != false" unless binary_multiple_of_4?('10') == false
raise "binary_multiple_of_4?('101') != false" unless binary_multiple_of_4?('101') == false
raise "binary_multiple_of_4?('a') != false" unless binary_multiple_of_4?('a') == false
raise "binary_multiple_of_4?('100a') != false" unless binary_multiple_of_4?('100a') == false
raise "binary_multiple_of_4?('10a0') != false" unless binary_multiple_of_4?('10a0') == false
raise "binary_multiple_of_4?('0') != true" unless binary_multiple_of_4?('0') == true
raise "binary_multiple_of_4?('100') != true" unless binary_multiple_of_4?('100') == true