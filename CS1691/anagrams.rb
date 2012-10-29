def combine_anagrams(words)
    anagrams = words.group_by { |word| word.downcase.split("").sort}.values
end
