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
  x.capitalize!
  words = x.split
  words.each do |word|
    if word != "over"
      word.length > 3 ? word.capitalize! : word
    else
      word
    end
  end
  words.join(' ')
end
