# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)

  vowel = ["a", "e" , "i", "o", "u"]
  if vowel.include?(word[0])
    word = word + "way"
elsif
    word[0..1] == "qu"
    word.slice!(0..1)
    word = word + "quay"
else
    while !vowel.include?(word[0])
    word = word + word[0] + "ay"
    word.slice!(0)
    return word
    end
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
