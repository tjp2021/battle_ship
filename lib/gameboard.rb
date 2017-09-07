require 'pry'

class GameBoard

  attr_accessor :board

  def initialize
    @board = {
      "A1" => "", "A2" => "", "A3" => "", "A4" => "",
      "B1" => "", "B2" => "", "B3" => "", "B4" => "",
      "C1" => "", "C2" => "", "C3" => "", "C4" => "",
      "D1" => "", "D2" => "", "D3" => "", "D4" => "" }
  end

  def print_horizontal_headers
    p " | A | B | C | D |"
    p "1| #{@board["A1"]}  | #{@board["A2"]}  | #{@board["A3"]}  | #{@board["A4"]}  |"
    p "2| #{@board["B1"]}  | #{@board["B2"]}  | #{@board["B3"]}  | #{@board["B4"]}  |"
    p "3| #{@board["C1"]}  | #{@board["C2"]}  | #{@board["C3"]}  | #{@board["C4"]}  |"
    p "4| #{@board["D1"]}  | #{@board["D2"]}  | #{@board["D3"]}  | #{@board["D4"]}  |"
  end


  def check_nil(two_boat_first, two_boat_second)
    if board[two_boat_second] == nil || board[two_boat_first] == nil
      return false
    end
  end

  def cant_place_diagonally_two(two_boat_first, two_boat_second)
    a = two_boat_first.split(//)[1].to_i
    b = two_boat_second.split(//)[1].to_i

    x = two_boat_first.split(//)[0].ord
    y = two_boat_second.split(//)[0].ord
    if a == b || x == y
      return true
    else
      false
    end
  end

  def cant_overlay_two_unit(two_boat_first, two_boat_second)
    if two_boat_first == two_boat_second || two_boat_second == two_boat_first
      return false
    end
  end

  def cant_wrap_vertically_two_unit(space_1, space_2)
    a = space_1.split(//)[0].ord
    b = space_2.split(//)[0].ord
    if a - b == 3
      return false
    end
  end

  def cant_wrap_horizontally_two_unit(space_1, space_2)
    a = space_1.split(//)[1].to_i
    b = space_2.split(//)[1].to_i
    if a - b == 3
       return false
    end
  end

  def cant_place_diagonally_two(two_boat_first, two_boat_second)
    a = two_boat_first.split(//)[1].to_i
    b = two_boat_second.split(//)[1].to_i

    x = two_boat_first.split(//)[0].ord
    y = two_boat_second.split(//)[0].ord
    if a == b || x == y
      return true
    else
      false
    end
  end

  def place_two_unit(two_boat_first, two_boat_second)
    a = two_boat_first.split(//)[1].to_i
    b = two_boat_second.split(//)[1].to_i

    x = two_boat_first.split(//)[0].ord
    y = two_boat_second.split(//)[0].ord


    if b - a > 1 || a - b > 1 || x - y > 1 || y - x > 1
      return false
    else
      board[two_boat_first] = "full"
      board[two_boat_second] = "full"
      true
    end
  end

def place_three_unit(space_1, space_2, space_3)
    board[space_1] = "full"
    board[space_2] = "full"
    board[space_3] = "full"
    true
  end

  def cant_place_outside_board(space_1, space_2, space_3)
    if board[space_3] == nil || board[space_1] == nil
      return false
    end
  end

  def cant_place_diagonally(space_1, space_2, space_3)
    a = space_1.split(//)[1].to_i
    b = space_2.split(//)[1].to_i
    c = space_3.split(//)[1].to_i

    x = space_1.split(//)[0].ord
    y = space_2.split(//)[0].ord
    z = space_3.split(//)[0].ord

    if a == b && b == c || x == y && y == z
      return true
    else
      false
    end
  end



  def cant_place_longer_than_three(space_1, space_2, space_3)
    a = space_1.split(//)[1].to_i
    b = space_3.split(//)[1].to_i

    if b - a > 2 || a - b > 2
      return false
    end
  end

  def cant_overlay_three_unit(space_1, space_2, space_3)
    if space_1 == space_2 || space_1 == space_3
      return false
    elsif space_2 == space_1 || space_2 == space_3
      return false
    else space_3 == space_1 || space_3 == space_2
      return false
    end
  end

  def cant_wrap_horizontally_three_unit(space_1, space_2, space_3)
    a = space_1.split(//)[1].to_i
    b = space_3.split(//)[1].to_i
    if a - b > 2 || b - a > 2
       return false
    end
  end

  def cant_wrap_vertically_three_unit(space_1, space_2, space_3)
    a = space_1.split(//)[0].ord
    b = space_3.split(//)[0].ord
    if a - b > 2 || b - a > 2
      return false
    end
  end




end
gameboard = GameBoard.new
