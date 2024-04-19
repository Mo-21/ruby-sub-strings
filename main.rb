dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(lookup_word, dictionary)
  words_array = lookup_word.downcase.split(' ')
  dictionary.reduce(Hash.new(0)) do |sum, dictionary_word|
    words_array.each do |word|
      sum[dictionary_word] += 1 if word.include?(dictionary_word)
    end
    sum
  end
end

p substrings('below', dictionary)
