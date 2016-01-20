# require 'pry'
  # letter = ("a".."z").to_a
  # Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
  # Rule 2: If a word begins with a consonant sound,
  # move it to the end of the word, and then add an "ay" sound to the end of the word.
# create array of vowels, the alphabet and just consonants
# turn cherry into errychay


$vowel = ["a", "e", "i", "o","u"]
$alpha = ("a".."z").to_a
$consonants = $alpha - $vowel

def translate(input)
  translated_array = []
  split_user_words(input).each do |word|
  translated_array << translate_word(word)
  end
  translated_array.join(' ')
end

def translate_word(input)
  letter_array = split_user_word(input)
  rotated_array = change_position(letter_array)
  new_array = first_letter_change_position(rotated_array)
  joined_array= new_array.join('')
end

  def split_user_word(input)
    input.split('')
  end

  def split_user_words(input)
    input.split(' ')
  end

  def count_consonants(input)
    i = 0
    letter = input[i]
  while $consonants.include? letter
    i += 1
  letter = input[i]
  end
  return i
end
#   count = 0
#   input.each do |letter|
#     if $vowel.include? letter
#       break
#     else
#       count += 1
#     end
#   end
#   return count
  def last_letter_q(qarray)
    qarray.last == "q"
  end

  def change_position(array)
  number_of_cons = count_consonants(array)
  array.rotate!(number_of_cons)
  if last_letter_q(array)
    array.rotate!
  end
  return array 
  end


  def first_letter_change_position(array)
    array << "ay"
  end








#
