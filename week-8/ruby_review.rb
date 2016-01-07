
class Pizza
  attr_reader :type
  
  def initialize(type)
    @type = type
  end
end


class Car
  attr_accessor :speed
  attr_reader :last_move, :total_distance, :pizza
  
  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @speed = 25
    @last_move = ''
    @pizza = []
  end
  
  def drive(distance, speed = 25)
    @total_distance += distance
    @speed = speed
    @last_move = "You drove #{distance} at #{@speed}"
  end
  
  def stop
    @speed = 0
    @last_move = "You stopped"
  end
  
  def turn(direction)
    if direction === 'left'
      @last_move = "You turned left"
    else
      @last_move = "You turned right"
    end
  end
  
  def add_pizza(type)
    @pizza[@pizza.length] = Pizza.new(type)
    p "You added a #{@pizza[@pizza.length-1].type} pizza!"
  end
  
  def remove_pizza(number)
    @pizza = @pizza.drop(number)
    p "You removed #{number} pizza!"
    p "You have #{@pizza.length} pizza left in the car"
  end
  
end

car = Car.new("Jeep","silver")
car.drive(0.25)
car.turn('right')
car.drive(1.5,35)
puts car.speed
car.speed = 15
car.turn('left')
car.drive(1.4,35)
car.stop
puts car.total_distance

car.add_pizza('gluten-free')
car.add_pizza('cheese')
car.remove_pizza(1)


