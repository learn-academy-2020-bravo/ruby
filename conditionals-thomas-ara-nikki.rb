puts 'Player One, Input rock, paper, or scissors.'
input_one = gets.downcase.chomp
puts 'Player Two, Input rock, paper, or scissors.'
input_two = gets.downcase.chomp

if input_one == 'rock' && input_two == 'rock'
  puts 'Its a tie!'
elsif input_one == 'rock' && input_two == 'scissors'
  puts 'Player One Wins!'
elsif input_one == 'rock' && input_two == 'paper'
  puts 'Player Two Wins!'
elsif input_one == 'scissors' && input_two == 'rock'
  puts 'Player Two Wins!'
elsif input_one == 'scissors' && input_two == 'scissors'
  puts 'Its a tie!'
elsif input_one == 'scissors' && input_two == 'paper'
  puts 'Player One Wins!'
elsif input_one == 'paper' && input_two == 'rock'
  puts 'Player One Wins!'
elsif input_one == 'paper' && input_two == 'scissors'
  puts 'Player Two Wins!'
elsif input_one == 'paper' && input_two == 'paper'
  puts 'Its a tie!'
else
  puts 'error'
end
