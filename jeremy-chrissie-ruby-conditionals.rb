puts 'Enter rock, paper, or scissors'
name = gets.chomp
name2= gets.chomp
    if name == "rock" && name2 == "scissors"
        puts "rock wins"
    elsif name == 'paper' && name2 == 'rock'
        puts "paper wins!"
    elsif name == 'scissors' && name2 == 'paper'
        puts 'scissors wins!'
    elsif name2 == 'rock' && name == 'scissors'
        puts 'rock wins!'
    elsif name2 == 'paper' && name == 'rock'
        puts 'paper wins!'
    elsif name2 == 'scissors' && name == 'paper'
        puts 'scissors wins!'
end
    