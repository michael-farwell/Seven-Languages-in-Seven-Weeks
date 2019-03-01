class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    empty?
  end
end

['', 'person', nil].each do |element|
  puts element unless element.blank?
end
