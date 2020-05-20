class Car

  def initialize(model, year)
    @model = model
    @year = year
    @wheels = 4
    @lights = "off"
    @turn_signal = "off"
    @speed = 0
  end

  def light_switch
    @lights = "on"
  end

  def signal_left
    @turn_signal = "turn left"
  end

  def signal_right
    @turn_signal = "turn right"
  end



  def wheels
    @wheels
  end
end

my_car = Car.new("generic",1999)
p my_car.wheels

my_tesla = Car.new("x2020", 2021)



my_toyota = Car.new("camery", 1997)




my_honda = Car.new("accord", 1889)
