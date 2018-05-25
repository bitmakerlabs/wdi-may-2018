
test_word = "plum"

def pig_latin(word)
  vowels = ['a','e','i','o','u','A','E','I','O','U']

  word.each_char do |char|
    if vowels.include?(char)
      break
    else
      word << char
      word[0] = ''
    end
  end

  return "#{word}ay"
end

puts pig_latin(test_word)











