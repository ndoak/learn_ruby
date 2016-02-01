class Temperature

  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end


  def self.in_celsius(num)
    self.new({:c => num})
  end

  def self.in_fahrenheit(num)
    Temperature.new({:f => num})
  end

  def to_fahrenheit
    if @f.nil?
      @f = (@c * (9.0/5)) + 32
    end
    return @f
  end

  def to_celsius
    if @c.nil?
      @c = (@f - 32) * (5.0/9)
    end
   return @c
  end

end

class Celsius < Temperature

  def initialize(num)
    @c = num
  end

end

class Fahrenheit < Temperature

  def initialize(num)
    @f = num
  end

end
