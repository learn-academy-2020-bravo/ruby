# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).
p "User 1 enter your weapon of choice"
user1 = gets.chomp
p "User 2 enter your weapon of coice"
user2 = gets.chomp

if user1 == 'scissors' && user2 == 'paper'
    puts 'User 1 wins'
elsif user1 == 'paper' && user2 == 'rock'
    puts 'User 1 wins'
elsif user1 == 'rock' && user2 == 'scissors'
    puts 'User 1 wins'
elsif user1 == 'scissors' && user2 == 'rock'
    puts 'User 2 wins'
elsif user1 == 'paper' && user2 == 'scissors'
    puts 'User 2 wins'
elsif user1 == 'rock' && user2 == 'paper'
    puts 'User 2 wins'
elsif user1 == user2
    puts "It's a tie"
elsif user1 == 'nuke'
    puts "Nukes always win - User 1 wins"
elsif user2 == 'nuke'
    puts "Nukes always win - User 2 wins"
else 
    puts "error"
end