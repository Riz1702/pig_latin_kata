# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
  vowel = ["a", "e" , "i", "o", "u"]
  if word[0] == word[0].upcase
    first_cap = true
  else
    first_cap = false
  end

  if vowel.include?(word[0])
    puts word = word + "way"
  elsif
    word[0..1] == "qu"
    word.slice!(0..1)
    puts word = word + "quay"
  elsif
    ( while !vowel.include?(word[0])
      word = word + word[0]
      word.slice!(0)
      end
      word = word + "ay" )

      if first_cap
        word = word.capitalize
      end
      return word

  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
