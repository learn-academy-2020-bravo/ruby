# i = 1
# # while i <= 20
# #   puts i
# #   i += 1
# # end
#
# 20.times do
#   puts i
#   i += 1
# end

# i = 20
# while i >= 0
#   if i.even?
#     puts i
#   end
#   i -= 1
# end

# numbers = [1,2,3,7,6]
# def mult_by_5 array
#   array.map do |value|
#     value * 5
#   end
# end
#
# puts mult_by_5 numbers

# example = ['apple', 'banana', 'grapefruit']
# def capitilizer array
#   array.map! do |value|
#     value.capitalize
#   end
# end
#
# puts capitilizer example
# puts example

# numbers = [1,2,3,7,6]
# def largest array
#   array.max
# end
# puts largest numbers

# numbers = [1,2,3,7,6]
# def smallest array
#   array.min
# end
# puts smallest numbers

# numbers = [1,2,3,7,6,5,11,9]
# def ascending_odds array
#   odds = array.select do |value|
#     value.odd?
#   end
#   odds.sort
# end
#
# puts ascending_odds numbers

# words = ["HeLlO", "HhHhHuUuIiI", "OoooWpL"]
# def switch_casing array
#   array.map do |value|
#     final = ''
#     value.each_char { |c|
#       if c == c.downcase
#         final += c.upcase
#       else
#         final += c.downcase
#       end
#     }
#     value = final
#   end
# end
#
# puts switch_casing words


# words = ["peLlO", "ahHhHuUuIiI", "ooooWpL", "pppw"]
# letter_p = 'p'
# def certain_word (array, letter)
#   array.select do |value|
#     value[0] == letter
#   end
# end
#
# puts certain_word words, letter_p
