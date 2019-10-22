# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  vowel = ["a", "e" , "i", "o", "u"]
  if vowel.include?(word[0])
    word = word + "way"
    puts word
  else
    while !vowel.include?(word[0])
    word = word + word[0]
    word.slice!(0)
    end
  end
    return word = word + "ay"
end



## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
