class Car

  def initialize(model, year)
    @model = model
    @year = year
    @wheels = 4
  end

  def wheels
    @wheels
  end
end

my_car = Car.new("generic",1999)
p my_car.wheels
