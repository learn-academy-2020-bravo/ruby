# Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers (num1, num2)
  puts num1+num2
end
sum_these_numbers (9), 2
# # Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even (num1)
  puts num1%2 == 0 ? "even": "odd"
end
is_even (7)
# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def small_num num
  puts num <= 10 ? "valid": "invalid"
end
small_num (11)


# User ID and password cannot be the same.
# User ID and password have to be at least six characters long.
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User Stories: Stretch
# As a user, I can enter my user ID and password and find out if the they are acceptable.
# User Stories: Super Stretch
# As a user, my password has to contain at least one digit

puts 'Enter your User ID'
user_id = gets.chomp
puts 'Enter a password'
password = gets.chomp

def password_checker user_id,password
if user_id.length < 6
    puts 'User ID must be at least six characters long'
elsif password.length < 6 
    puts 'Password must be at least six characters long'
elsif password == 'password' 
    puts 'Password cannot be the word password'
elsif user_id == password
    puts 'User ID and Password cannot be the same'
elsif !password.include? "!" || "#" || "$"
    puts 'Password must contain at least one of: !#$'
elsif user_id.include? "!" || "#" || "$" 
    puts 'User ID cannot contain the following characters: !#$'
elsif user_id [/\s/]
    puts 'User ID cannot contain spaces'
elsif !password [/\d/]
    puts 'Password must contain one digit'
else
  puts 'User ID and Password are acceptable!'
end

password_checker user_id, password
end

