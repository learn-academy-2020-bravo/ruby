# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

# def sum_these_numbers (num1, num2)
#   # puts num1 + num2
# end
# sum_these_numbers(2,5)
# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even (num)
#   if num % 2 == 0
#     puts "true"
#   else
#     puts "false"
#   end
# end
# is_even 56
# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def num_between num
#   if num >= 1 && num <= 10
#     puts "Valid"
#   else
#     puts "Invalid"
#   end
# end
# num_between 9

# Challenge: Password Checker
# User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:
#
puts "Input your User ID"
user_id = gets.chomp
puts "Input your Password"
user_password = gets.chomp

if user_id == user_password
  puts "they can't be the same"
elsif user_id.length < 6 || user_password.length < 6
  puts "User ID or Password is too short"
elsif !user_password.include?'!' && !user_password.include?'$' && !user_password.include?'#'
  puts "password should include '!$#'"
else
  puts "you are good"
end



# User ID and password cannot be the same.
# User ID and password have to be at least six characters long.
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User Stories: Stretch
# As a user, I can enter my user ID and password and find out if the they are acceptable.
# User Stories: Super Stretch
# As a user, my password has to contain at least one digit.
