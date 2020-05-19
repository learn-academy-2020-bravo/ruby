# Challenges
# Write a loop that prints the numbers 1 to 20.

# num = 1
# while num <= 20
#     p num
#     num += 1
# end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

# (1..20).each do |value|
#     p value
# end

# Write a loop that prints only even numbers from 20 to 0.

# num = 20
# while num >= 0
#     p num
#     num -= 2
# end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# nums = [1, 2, 3, 4, 5]
# def multiply_five array
#     array.map do |value|
#         value * 5
#     end
# end
# p multiply_five nums



# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
# words = ["monkey", "dog", "cat", "banana", "sloth"]
# def capitalize array
#     array.map! do |value|
#         value.upcase
#     end
# end
# p capitalize words


# Create a method that takes in an array of numbers and returns the largest number in the array.

# nums = [23, 5, 100, -24, 0, 3]
# # p nums.max
# def max_num array
#   array.max
# end
#
# # p max_num nums
#
#
#
# # Create a method that takes in an array of numbers and returns the smallest number in the array.
#
# def min_num array
#   array.min
# end
# p min_num nums




# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

# nums = [23, 5, 100, -24, 0, 3]
#
# def only_odd array
#   array.select do |value|
#     value % 2 != 0
#   end
# end
# p only_odd nums.sort

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
#
# words = ["Hi", "Iam", "Chrissie"]
#
# def reversed_casing array
#   array.map do |value|
#   str_arr = value.split""
#     str_arr.map do |value|
#       if value == value.downcase
#         value.upcase
#       elsif value == value.upcase
#         value.downcase
#       end
#     end.join("")
#   end
# end
#
# p reversed_casing words


#   down_letters = ('a'..'z')
#   up_letters = ('A'..'Z')
#   str_arr.map do |value|
#     if value == down_letters
#       p value.upcase
#     elsif value == up_letters
#       p value.downcase
#     end
#   end
# end


# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

fruits = ['Apple', 'Avocado', 'Banana', 'Mango']

def particular_letter array
  array.select do |value|
    if value.downcase.start_with?("a")
      p value
    elsif value.downcase.start_with?("m")
      p value
    end
  end
end
p particular_letter fruits


# FIZZBUZZ
# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.

num = 0
while num <= 99
  num += 1
  divide_by_3 = num % 3 == 0
  divide_by_5 = num % 5 == 0
  if divide_by_3 && divide_by_5
    p "FIZZBUZZ"
  elsif divide_by_3
    p "FIZZ"
  elsif divide_by_5
    p "BUZZ"
  else
    p num
  end
end
