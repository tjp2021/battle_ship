class BattleShip


  def start_game
  welcome_message
  user_input = gets.chomp.downcase
    if user_input == "p"
      initiate_game
    elsif user_input == "i"
      instructions
    else user_input == "q"
      p "You've exited the game"
    end
  end

  def welcome_message
  p "Welcome to BATTLESHIP"

  p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    p "You will need to place your ships on a grid by typing in coordinates(eg: A1, A2). Your ship cannot be placed outside of the grid, diagonally, or overlapping. You and the computer will alternate turns taking guesses at a game grid to sink the opposings players ship. Do you want to (p)lay or (q)uit?"
    user_input = gets.chomp.downcase
    if user_input == "p"
      initiate_game
    elsif user_input == "q"
      p "You've exited the game"
    else
      p "Invalid option, try again"
      instructions
    end
  end

  def initiate_game
    
  end



end





battleship = BattleShip.new

battleship.start_game
