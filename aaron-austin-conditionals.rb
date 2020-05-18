p "player1: enter your choice"
player1 = gets.chomp

p "player2: enter your choice"
player2= gets.chomp

if player1 == 'rock' && player2 == 'rock'
  p "tie game play again"

elsif player1 == 'scissors' && player2 == 'scissors'
    p "tie game play again"

elsif player1 == 'paper' && player2 == 'paper'
      p "tie game play again"

elsif  player1 == 'rock' && player2 == 'scissors'
  p "player one Wins"
elsif  player1 == 'scissors' && player2 == 'paper'
  p "player one Wins"
elsif  player1 == 'paper' && player2 == 'rock'
  p "player one Wins"
elsif  player2 == 'rock' && player1 == 'scissors'
  p "player two Wins"
elsif  player2 == 'scissors' && player1 == 'paper'
  p "player two Wins"
elsif  player2 == 'paper' && player1 == 'rock'
  p "player two Wins"


end
