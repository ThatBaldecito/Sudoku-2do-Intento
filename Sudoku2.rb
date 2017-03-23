require 'gosu'

class Window < Gosu::Window
  def initialize
    super 475,475,false
    self.caption="Sudoku"
    $Square=Gosu::Image.new(self,"CuadradoSudoku.png",465,465,true)
    $board[[1,8,6,5,2,9,3,4,7],[2,5,4,3,7,8,6,1,9],[3,7,9,4,1,6,8,2,5],[6,3,1,9,5,2,4,7,8],[4,2,8,7,3,1,5,9,6],[7,9,5,8,6,4,1,3,2],[9,6,3,2,4,5,7,8,1],[5,4,2,1,8,7,9,6,3],[8,1,7,6,9,3,2,5,4]]
    $images
  end
  def draw
    $Square.draw(0,0,0)
  end
end

class Shuffler
  def initialize
    $shuffle_s_board=$board
    $a=0
    $b=0
  end
  def Math
    $a=rand()
    
    
    
  end
  def HOR_ThinShuffle
    $board[][]
  end
  def VER_ThinShuffle
    
  end
  def HOR_ThickShuffle
    
  end
  def VER_ThickShuffle
    
  end
end
window=Window.new
window.show