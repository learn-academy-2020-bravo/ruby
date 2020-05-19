# def sum_these_numbers(num1, num2)
#     num1 + num2
# end
#
# puts sum_these_numbers(1,2)
#
# def isEven(int) #do we need ()
#     if int % 2 == 0
#           "true"
#     else
#          "false"
#     end
# end
#
#   puts isEven(2)
#
# def isLoop(num)
# array = []
#     if num < 10 && num > 0
#         p "this valid"
#     else
#         p "not valid"
#     end
# end
#
# isLoop(11)


p 'Please Enter a User Id '
  user_id = gets.chomp
p 'Please enter a Password (Note: User Id and Password cannot be the same)'
  password = gets.chomp

  if user_id == password
    p 'User Id and Password cannot be the same. Please enter new Password'
    password = gets.chomp
  elsif user_id.length <= 5 || password.length <= 5
    p 'User ID and Password must be at least 6 characters long.'
 elsif !password.include? "!" || "#" || "$"
   puts 'Password must contain at least one of: !#$'
 elsif user_id.include? "!" || "#" || "$"
   puts 'User ID cannot contain the following characters: !#$'
 elsif user_id =~ /\s/
   puts 'User ID cannot contain spaces'
  elsif password == 'password'
    p 'Password cannot be Password'
  else
    p 'Thank you'
  end
