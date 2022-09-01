# class Triangle

#   attr_accessor :side_1, :side_2, :side_3

#   def initialize(side_1, side_2, side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end

#   def kind
#     if side_1 == side_2 && side_2 == side_3
#       :equilateral
#     elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
#       :isosceles

#     elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
#      :scalene

#     elsif side_1 + side_2 + side_3  == 0
#       "raise TriangleError"

#     elsif side_1 + side_2 < side_3 || side_1 + side_3 < side_2 || side_2 + side_3 < side_1 
#       "raise TriangleError"

#     else 
#       "clean"

#     end
#   end

#   class TriangleError < StandardError
#     def message
#       "This is not a Triangle"
#     end 
#   end

#   private
#   def is_triangle? a, b, c
#     (a && b && c > 0 ) && (a + b > c) && (a + c > b) && (b + c > a)
#   end

#   def is_equilateral? a, b, c
#     a == b && a == c
#   end

#   def is_isosceles? a, b, c
#     a == b || a == c || b == c
#   end
  
#   end

class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize side_1, side_2, side_3
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 

  def kind
    if is_triangle? self.side_1, self.side_2, self.side_3
      if is_equilateral? self.side_1, self.side_2, self.side_3
        :equilateral
      elsif is_isosceles? self.side_1, self.side_2, self.side_3
        :isosceles
      else 
        :scalene
      end
    else
      raise TriangleError
    end


  end

  class TriangleError < StandardError
    def message
      "Not a Triangle"
    end 
  end

  private
  def is_triangle? x, y, z
    (x && y && z > 0 ) && (x + y > z) && (x + z > y) && (y + z > x)
  end

  def is_equilateral? x, y, z
    x == y && x == z
  end

  def is_isosceles? x, y, z
    x == y || x == z || y == z
  end
end