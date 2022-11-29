class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !((self.a + self.b) > self.c) || !((self.b + self.c) > self.a) || !((self.c + self.a) > self.b)
      raise TriangleError
      elsif !(self.a > 0 && self.b > 0 && self.c > 0)
        raise TriangleError
    end

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
  end
  end

  class TriangleError < StandardError
  end

end