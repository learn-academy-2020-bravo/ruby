# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).

# puts "user_1 enter your Roshambo pick"
# puts "user_2 enter your Roshambo pick"
# user_1 = gets.chomp
# p user_1
# user_2 = gets.chomp
# p user_2

# if user_1 == "rock" && user_2 == "scissors"
#     p "#{user_1} Wins"
# elsif user_1 == "scissors" && user_2 == "paper"
#     p "#{user_1} Wins"
# elsif user_1 == "paper" && user_2 == "rock"
#     p "#{user_1} Wins"
# elsif user_2 == "rock" && user_1 == "scissors"
#     p "#{user_2} Wins"
# elsif user_2 == "scissors" && user_1 == "paper"
#     p "#{user_2} Wins"
# elsif user_2 == "paper" && user_1 == "rock"
#     p "#{user_2} Wins"
# elsif user_1 == user_2 
#     p "It's a Tie"
# else
#     p "Error"
# end


# # Create a method called sum_these_numbers
# def sum_these_numbers(num1, num2)
#   p num1 + num2
# end
# sum_these_numbers(4,3)

# # Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def is_even (num)
#   if num%2 == 0
#      true
#   else
#      false
#   end
# end
# p is_even(7)


# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def method(num)
#   if num >1 && num <10
#     "Valid"
#   else
#     "Invalid"
#   end
# end
#   p method(22)
#   p method(5)


# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password have to be at least six characters long.
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".

# create an area for user input for ID
# create an area for user input for password

# username id and password cannot be the same
# they both need to contain at the very least 6 characters
# password needs to contain at least one of !#$
# user id cnanot contain !#$ or spaces
# password cannot be password



puts "Please enter a new user ID that is 6 characters or longer and does not contain '!#$' or any spaces, it cannot be the same as your password"
id = gets.chomp

puts "Please enter a new password that is 6 characters or longer and contains '!#$', it cannot be the same as your user ID"
pw = gets.chomp

if id == pw
    p "your user id cannot be the same as your password"
  elsif id.length < 6 || pw.length < 6
    p "your id and password need to be 6 characters or more"
  elsif !pw.include?('!') && !pw.include?('$') && !pw.include?('#')
    puts "Your password must contain '!$#'"
  elsif id.include?('!') || id.include?('$') || id.include?('#') || id.include?(' ')
    puts "Your id cannot contain '!$# or spaces'"
  elsif !pw.include?('1') && !pw.include?('2') && !pw.include?('3') && !pw.include?('4') && !pw.include?('5') && !pw.include?('6') && !pw.include?('7') && !pw.include?('8') && !pw.include?('9')
    puts "Your password must contain a number"
  else 
    p "Your user ID and Password are acceptable"
end