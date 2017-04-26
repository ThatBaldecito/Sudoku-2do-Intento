require 'gosu'

class Window < Gosu::Window
  def initialize
    super 475,475,false
    self.caption="Sudoku"
    $Square=Gosu::Image.new(self,"CuadradoSudoku.png",465,465,true)
    $board
    $images
  end
  def draw
    $Square.draw(0,0,0)
  end
end

class Shuffler
  def self.initialize
    $a=0
    $b=0
    $Frag1=0
    $Frag2=0
    $Frag3=0
  end
  def self.math
    $a=rand(1..3)
    $as=rand(1..3)
    $b=rand(0..2)
    $bs=rand(0..2)
    
  end
  def self.hor_ThinShuffle
    $Frag1=[
            [1,8,6,5,2,9,3,4,7],
            [2,5,4,3,7,8,6,1,9],
            [3,7,9,4,1,6,8,2,5]
           ]
    $Frag2=[
            [6,3,1,9,5,2,4,7,8],
            [4,2,8,7,3,1,5,9,6],
            [7,9,5,8,6,4,1,3,2]
           ]
    $Frag3=[
            [9,6,3,2,4,5,7,8,1],
            [5,4,2,1,8,7,9,6,3],
            [8,1,7,6,9,3,2,5,4]
           ]
    case $a
      when 1
        $Frag1[$b], $Frag1[$bs] = $Frag1[$bs], $Frag1[$b]
      when 2
        $Frag2[$b], $Frag2[$bs] = $Frag2[$bs], $Frag2[$b]
      when 3
        $Frag3[$b], $Frag3[$bs] = $Frag3[$bs], $Frag3[$b]
    end
  end
  def self.ver_ThinShuffle
    case $a
      when 1
      $Frag1[$b][1],$Frag1[$b][2],$Frag1[$b][3]=$Frag1[$bs][1],$Frag1[$bs][2],$Frag1[$bs][3]
      when 2
      $Frag2[$b][1],$Frag2[$b][2],$Frag2[$b][3]=$Frag2[$bs][1],$Frag2[$bs][2],$Frag2[$bs][3]
      when 3
      $Frag3[$b][1],$Frag3[$b][2],$Frag3[$b][3]=$Frag3[$bs][1],$Frag3[$bs][2],$Frag3[$bs][3]
      print $Frag1
      print $Frag2
      print $Frag3
    end
  end
  def HOR_ThickShuffle
    
  end
  def VER_ThickShuffle
    
  end
end
window=Window.new
window.show
Shuffler.initialize
Shuffler.math
Shuffler.hor_ThinShuffle
Shuffler.ver_ThinShuffle