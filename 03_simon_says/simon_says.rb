def echo(greeting)
  "#{greeting}"
end


def shout(greeting)
  greeting.upcase
end

def repeat(string, num = 2)
  "#{(string + " ") * num}".strip
end

def start_of_word(start,x)
 start.slice(0, x)
end

def first_word(word)
  a = word.split(' ')
  a[0]
end

def titleize(x)
    words = x.split
    words.each do |word|
        if word.length < 3 unless word == "the" || unless word == "war"
            word.downcase!
        elsif word.length > 3 unless word == "over"
            word.capitalize!
        end
      end
        words.join(' ')
end
