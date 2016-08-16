# repeats the str
def echo(str)
  str
end

# upcase the str
def shout(str)
  str.upcase
end

# repeat str at least n = 2 times
def repeat(str, n = 2)
  array = []
  i = 1
  while i <= n
    array << str
    i += 1
  end
  array.join(' ')
end

# outputs min of the first 1 to n letters of the word
def start_of_word (str, n = 0)
  x = str
  x[0..(n-1)]
end

# returns first word in a str
def first_word(str)
  str.split.first
end

# capitalize
def titleize(str)
  array = str.split(' ')
  words = ["and", "then", "over", "done", "the"]
    array.each do |word|
      if words.include? word
      else
        word.capitalize!
      end
    end
    array[0].capitalize!
    final = array.join(' ')
  return final
end
