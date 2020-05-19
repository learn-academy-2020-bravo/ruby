
# Challenges
# Write a loop that prints the numbers 1 to 20.

# num =1
# while num <=20
#     p num #can we condese even furthe to p num+=1???
#     num+=1
# end


# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

# (1..20).each do |value|
#     p value
# end

# Write a loop that prints only even numbers from 20 to 0.

# QUESTION!!!!!!


#Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
#
# num = [2, 3, 4, 5, 6]
# num.each do |value|
#     p value*5
# end
#
# # Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
#
# words = ["hey", "to", "sup", "hello"]
# words.each do |value|
#     p value.capitalize
# end

# Create a method that takes in an array of numbers and returns the largest number in the array.
# num = [2, 45, 4, 5, 60]
#
# def max_number array
#   anchor=0
#   array.map do |value|
#     if value > anchor
#       anchor = value
#     end
#   end
#    anchor
# end
# p max_number num
#





# Create a method that takes in an array of numbers and returns the smallest number in the array.
# num = [2, 45, 4, 5, 60]
#
# def min_number array
#   anchor=60
#   array.map do |value|
#     if value < anchor
#       anchor = value
#     end
#   end
#    anchor
# end
# p min_number num



# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
num = [2, 45, 4, 5, 60,15]

def odd_sort array
   array.sort.select do |value|
    value.odd?
  end
end
p odd_sort num


# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.


# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

# FIZZBUZZ
# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
