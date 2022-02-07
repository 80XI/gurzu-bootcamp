
def display_board(usr_inpt)
board = usr_inpt
puts "#{board[0]} | #{board[1]} | #{board[2]}"
puts "---------"
puts "#{board[3]} | #{board[4]} | #{board[5]}"
puts "---------"
puts "#{board[6]} | #{board[7]} | #{board[8]}"
end

board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
display_board(board)
puts "enter number(1-9)"
usr_inpt = gets.chomp.to_i-1
board[usr_inpt] = "X" 
display_board(board)