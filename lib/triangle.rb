require 'pry'
class Triangle
  # write code here
  def initialize(one,two,three)
    @sides = []
    @sides << one,two,three
  end

  def sides
    @sides
  end

  def kind
    
    self.sides.each do
      |side| if side < 0
        raise TriangleError
      end

      self.sides.combination(2).to_a.map do
        |a,b| a+b
      end
      end  
    end

    
        
  end

  class TriangleError < StandardError
  end
end
