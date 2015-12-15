class NameData
  attr_reader :name
  def initialize
    @name = "Ray"
  end
end

class Greetings
  def initialize
    @my_name = NameData.new
  end

  def salutation
    p "Oh, hello #{@my_name.name}"
  end
end

greet = Greetings.new
greet.salutation