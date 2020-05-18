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
  puts "User ID and password can't be the same"
elsif user_id.length < 6 || user_password.length < 6
  puts "User ID or Password is too short"
elsif !user_password.include?('!') && !user_password.include?('$') && !user_password.include?('#')
  puts "Password should include '!$#'"
elsif user_id.include?('!') || user_id.include?('$') || user_id.include?('#') || user_id.include?(' ')
  puts "User ID cannot include '!$# or whitespace'"
elsif !user_password.include?('0') && !user_password.include?('1') && !user_password.include?('2') && !user_password.include?('3') && !user_password.include?('4') && !user_password.include?('5') && !user_password.include?('6') && !user_password.include?('7') && !user_password.include?('8') && !user_password.include?('9')
  puts "Password needs a number"
else
  puts "User ID and password are acceptable"
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
