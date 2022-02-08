
def display_board(usr_inpt)
  @board = usr_inpt
  puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
  puts "---------"
  puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
  puts "---------"
  puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  puts "                                "
end

def position_taken(usr_inpt)
# puts "sss#{@player1}"
# puts "555#{@player2}"
  check = usr_inpt
    if @board[check] == " " then
      if @isfirstplayer then
            @board[usr_inpt] = "X"
            @player1.push(usr_inpt)
            @player1.sort
        else
            @board[usr_inpt] = "O"
            @player2.push(usr_inpt)
            @player2.sort
      end
    display_board(@board)
      else
        puts "Your move is invalid, enter again (1-9)"
        usr_inpt = gets.chomp.to_i-1
        position_taken(usr_inpt) # is this valid?
    end
  @win_combinations= [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]
  # @win_combinations.each do |n|
  if @win_combinations.include?(@player1) 
        puts "Player 1 is winner"
    end
    if @win_combinations.include?(@player2) 
        puts "Player 2 is winner"
    end
end

@board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
@player1 = []
@player2 = []
@isfirstplayer = true
def main         #does this method is calling because of it is last defined?
  # display_board(@board)
  puts "enter number(1-9)"
  usr_inpt = gets.chomp.to_i-1
  position_taken(usr_inpt)
  @isfirstplayer = !@isfirstplayer
end
display_board(@board)
  i = 1
  while i < 10
    main
    i += 1
    if @win_combinations.include?(@player1) || @win_combinations.include?(@player2)
                    #TODO: reset array
      break     
    end
  end

