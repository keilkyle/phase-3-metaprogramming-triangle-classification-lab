class Triangle

  attr_accessor :kind, :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def kind
    if self.a > 0 and self.b > 0 and self.c > 0 and self.a + self.b > self.c and self.b + self.c > self.a and self.a + self.c > self.b
      if self.a == self.b and self.b == self.c and self.a == self.c
        self.kind = :equilateral
      elsif self.a != self.b and self.b != self.c and self.a != self.c
        self.kind = :scalene
      else 
        self.kind = :isosceles
      end 
    else 
      begin
        raise TriangleError
      end
    end   
  end

  class TriangleError < StandardError
  end
end
