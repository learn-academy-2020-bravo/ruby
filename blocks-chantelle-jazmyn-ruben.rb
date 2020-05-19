# Challenges
# Write a loop that prints the numbers 1 to 20.

num = 1
20.times do
    # p num
    num +=1
end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

num = (1..20)

num.each do |value|
    # puts value
end

# Write a loop that prints only even numbers from 20 to 0.

num = (0..20)

def is_even num
    array = num.to_a.reverse
    array.each do |value|
        if value.even?
            p value
        end
    end
end

# is_even num



# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

array_of_nums = [2, 4, 7, 9, 11]

def mult_by_5 array
    array.map do |value|
        value * 5
    end
end

 mult_by_5 array_of_nums



# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
array_of_words = ['lowercase', 'uppercase', 'banana', 'jazmyn']

def capitalizer array
    array.map! do |value|
        value.capitalize
    end
end

 capitalizer array_of_words

# Create a method that takes in an array of numbers and returns the largest number in the array.

big_nums = [22, 11, 85467, 9, 90, 16]
bigger_nums = [1, 2, 35899789729834, 4, 1]

def big_guy array
    array.sort!
    p array.last
end

# big_guy big_nums
# big_guy bigger_nums


# Create a method that takes in an array of numbers and returns the smallest number in the array.

small_nums = [22, 11, 85467, 9, 90, 16]
smaller_nums = [1, 2, 35899789729834, 4, 1]

def lil_guy array
    array.sort!
    p array.first
end

# lil_guy small_nums
# lil_guy smaller_nums


# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

random_nums = [34, 67, 45, 38, 111, 27, 2, 98, 3, 21, 69]

def sorting_for_odds array
  odds_only = []
  array.each do |value|
        if value.odd?
            odds_only.push(value)
        end
  odds_only.sort!
  end
    p odds_only
end
sorting_for_odds random_nums
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.

wonky_words = ['SmiLE', 'JuICe', 'MAyoNaIsE', 'DOG', 'balloon']

def reverse_wonkifying array
  array.map! do |value|
    value.swapcase
  end
  p array
end

# reverse_wonkifying wonky_words

# Create a method that takes in an array of words and returns all the words that start with a particular letter.
# Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

favorite_fish = ['clown', 'tuna', 'shark', 'dory', 'salmon', 'trigger', 'catfish']

def one_letter array, letter
  array.select do |value|
    value.start_with?(letter)
  end
end

p one_letter favorite_fish,('c')

# FIZZBUZZ
# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.

nums = (1..100)

def fizz_buzz num
  num.each do |value|
    if value % 15 == 0
      p 'fizzbuzz'
    elsif value % 5 == 0
      p 'buzz'
    elsif value % 3 == 0
      p 'fizz'
    else
      p value
    end
  end
end

fizz_buzz nums
