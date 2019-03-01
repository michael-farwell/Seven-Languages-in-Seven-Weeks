class Numeric
  def inches
    self
  end

  def feet
    self * 12.inches
  end

  def yards
    self * 3.feet
  end

  def miles
    self * 5288.feet
  end

  def back
    self * -1
  end

  def forward
    self
  end
end

puts 18.miles.back
puts 2.feet.forward
