# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

# def sum_these_numbers (num1, num2)
#     puts num1 + num2
# end

# sum_these_numbers 3, 4

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even num 
#     if num % 2 == 0
#         puts true
#     elsif num % 2 == 1
#         puts false
#     else 
#         puts 'error'
#     end
# end

# is_even 'hi'

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def proper_number num
#     if num >= 1 && num <= 10
#         puts 'valid'
#     else
#         puts 'invalid'
#     end
# end

# proper_number 'fat'


# User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password have to be at least six characters long.
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".

# User Stories: Stretch
# As a user, I can enter my user ID and password and find out if the they are acceptable.

# User Stories: Super Stretch
# As a user, my password has to contain at least one digit.

valid_id = false
valid_pass = false
global_id = ''
global_pass = ''

def check_user_id (userid)
    global_id = userid
    if userid.length <= 6
        puts 'userID too short. Must be more than six characters.'
    elsif userid.include? '!'
        puts 'invalid userID. cannot contain !'
    elsif userid.include? '#'
        puts 'invalid userID. cannot contain #'
    elsif userid.include? '$'
        puts 'invalid userID. cannot contain $'
    elsif userid.include? ' '
        puts 'invalid userID. cannot contain a space'  
    else
       valid_id = true
       
    end
end


loop do

    p 'Please enter your UserId'
    user_id = gets.chomp

    value = check_user_id (user_id)
    if value == true
        break
        
    end
   
end






def check_password (pass)
    if pass.length <= 6
        puts 'your password is too short. It must be longer than six characters.'
    elsif 'password' == pass
        puts 'invalid password. Password cannot be password'
    elsif !pass.include? ('!') || !pass.include? ('#')
        puts 'invalid password. Must contain !'
    else
        valid_pass = true
    end
end

loop do
    
    p 'Please enter your Password'
    password = gets.chomp

    valid_pass = check_password (password)
    if valid_pass == true
        break
        
    end
   
end



