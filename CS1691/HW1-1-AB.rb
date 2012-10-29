# check input if reverse matches standard
def palindrome?(input)
  str = input.downcase.scan(/\w/)
  str == str.reverse
end

# create new hash (default 0), for loop each word in the input string, add to counter 
def count_words(string)
   words = string.split(/[^a-zA-Z]/)
   counter = Hash.new(0)
   conv_words = words.collect { |word| word.downcase }
   conv_words.each { |item| counter[item] += 1 }
   return counter
end
