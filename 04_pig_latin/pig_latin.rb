def translate (str)
  alpha = ('a'..'z').to_a
  vowels = %w{a e i o u}
  consonant = alpha - vowels

  array_str = str.split
  new_array = []
  array_str.each do |word|
    if word[0] == "q"
      word = word[2..-1] + word[0..1]
    elsif word[1] == "q"
      word = word[3..-1] + word[0..2]
    else
      while consonant.include? word[0]
        word = word[1..-1] + word[0]
      end
    end
    word = word + "ay"
    new_array << word
  end
  new_array.join(' ')
end

# def translate (str)
#   alpha = ('a'..'z').to_a
#   vowels = %w{a e i o u}
#   consonant = alpha - vowels
#
#   array_str = str.split
#   new_array = []
#   array_str.each do |word|
#     if word[0] == "q"
#       word = word[2..-1] + word[0..1]
#     else
#       while consonant.include? word[0]
#         word = word[1..-1] + word[0]
#       end
#     end
#     word = word + "ay"
#     new_array << word
#   end
#   new_array.join(' ')
# end



# def translate(str)
#   vowels = %{a e i o u}
#   array_str = str.split
#   new_array = []
#   array_str.each do |x|
#     if not vowels.include? x[0] || x[1] == "q" || x[2] == "u"
#       x = x.sub(x, x[3..-1] + x[0..2] + "ay")
#     elsif x[0] == "q" || x[1] == "u"
#       x = x.sub(x, x[2..-1] + x[0..1] + "ay")
#     else
#       if vowels.include? x[0]
#         x = x.sub(x, x + "ay")
#       elsif not vowels.include? x[0]
#         if not vowels.include? x[1]
#           if not vowels.include? x[2]
#             x = x.sub(x, x[3..-1] + x[0..2] + "ay")
#           else
#             x = x.sub(x, x[2..-1] + x[0..1] + "ay")
#           end
#         else
#         x = x.sub(x, x[1..-1] + x[0] + "ay")
#         end
#       end
#     end
#
#     new_array << x
#   end
#   new_array.join(' ')
# end


#
# def translate1 (sent)
#     vowels = %w{a e i o u}
#     sent.gsub(/(\A|\s)\w+/) do |str|
#             str.strip!
#         while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
#             str += str[0]
#             str = str[1..-1]
#         end
#         str  = ' ' + str + 'ay'
#     end.strip
# end
#
# def translate (words)
#     vowels = %w{a e i o u}
#     new_array = []
#     array_words = words.split
#     array_words.each do |x|
#       case vowels.include? x[0]
#       when true
#       x = x.sub(x + "ay")
#       puts x
#       end
#     else
#     end
#     puts new_array.join('')
#     puts "hello"
# end
#
# translate("apple")
#



# def translate(str)
#   vowels = %{a e i o u}
#   array_str = str.split
#   new_array = []
#   array_str.each do |word|
#     if word[0] == "q" && word[1] == "u"
#       word = word.sub(word, word[2..-1] + word[0..1] + "ay")
#     elsif not vowels.include? word[0] #check if firs letter is a consonant
#       if word[0] == "q" #if consonant, check if it's q
#         word = word.sub(word, word[2..-1] + word[0..1] + "ay")
#       elsif not vowels.include? word[1] #if not q, check if second letter is consonant
#         if not vowels.include? word[2] #if second letter is consonnat, check 3rd letter
#           word = word.sub(word, word[3..-1] + word[0..2] + "ay")
#         else
#         word = word.sub(word, word[2..-1] + word[0..1] + "ay") #3rd letter is not consonant, move start 2 letter to back and add 'ay'
#         end
#         word = word.sub(word, word[1..-1] + word[0] + "ay") #
#       end
#       word = word.sub(word, word[1..-1] + word[0] + "ay")
#     else
#       word = word + "ay"
#     end
#     new_array << word
#   end
#   new_array.join(' ')
# end
#
#
# def translate1 (words)
#   vowels = %{a e i o u}
#   array_str = words.split
#   new_array = []
#   array_str.each do |word|
#     if vowels.include? == false
#       word = word.sub(word[1..-1] + word[0] + "ay")
#     elsif vowels.include?
#       word = word.sub(word + "ay")
#     else
#       puts "nothing"
#     end
#     new_array << word
#   end
#   new_array.join(' ')
# end
