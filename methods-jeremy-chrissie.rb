# User ID and password cannot be the same.
# User ID and password have to be at least six characters long.
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".

puts 'Enter your User ID'
user_id = gets.chomp
puts 'Enter a password'
password = gets.chomp

# def password_checker (user_id,password)
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
  elsif user_id =~ /\s/
    puts 'User ID cannot contain spaces'
end

# password_checker user_id, password
# end
