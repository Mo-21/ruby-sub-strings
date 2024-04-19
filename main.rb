require 'pry-byebug'

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def get_accurate_match(lookup_word, dic)
  new_word = lookup_word.downcase.split('')
  matched_words = {}
  new_word.reduce do |sum, letter|
    sum += letter
    dic.map do |word|
      matched_words[word] = 1 if word.include?(sum) && !matched_words.include?(word)
    end
    sum
  end
  p matched_words
end

def match_words(lookup_word, dic)
  lookup_chars = lookup_word.include?(' ') ? lookup_word.split(' ').map { |w| w.split('') } : lookup_word.split('')
  matched_words = {}
  dic.each do |word|
    if lookup_word.include?(word)
      matched_words.push(word)
    elsif word.chars.all? { |char| lookup_chars.include?(char) }
      matched_words.push(word)
    end
  end
  p matched_words
end

match_words("Howdy partner, sit down! How's it going?", dictionary)
