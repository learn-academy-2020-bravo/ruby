# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#

class Car

  def initialize model, year
    @model = model
    @year = year
    @wheels = 4
    @lights = "OFF"
    @signals = "OFF"
    @speed = 0
  end

  def model
    @model
  end

  def year
    @year
  end

  def wheels
    @wheels
  end

  def lights
    @lights
  end

  def signals
    @signals
  end

  def speed
    @speed
  end

  def change_lights
    if @lights == "ON"
      @lights = "OFF"
    else
      @lights = "ON"
    end
  end

  def change_signals_right
    if @signals == "OFF"
      @signals = "RIGHT ON"
    else
      @signals = "OFF"
    end
  end

  def change_signals_left
    if @signals == "OFF"
      @signals = "LEFT ON"
    else
      @signals = "OFF"
    end
  end

  def show_info
    "The car is #{@model} and #{@year} has #{@wheels} wheels. The lights are #{@lights}. Now turning #{@signals}."
  end


end

my_car = Car.new 'bmw','1988'
p my_car.show_info





class Tesla < Car
  def initialize model, year
    super(model, year)
  end


  def show_tesla_info
    "#{@model} is from #{@year} and has #{@wheels} wheels. The lights are #{@lights}. The speed is #{@speed}."
  end


  def speed_up
    @speed += 10
  end

  def speed_down
    @speed -= 7
    if @speed < 0
      @speed = 0
    end
  end


end

p my_tesla = Tesla.new('Model3','2018')
p my_tesla.to_s
# my_tesla.speed_up
# my_tesla.speed_up
# my_tesla.speed_down
# my_tesla.speed_down
# my_tesla.speed_down
# # p my_tesla.show_tesla_info
# my_tesla.change_lights()
# p my_tesla.show_tesla_info


class Toyota  < Car
  def initialize model, year
    super
  end

  def show_toyota_info
    "#{@model} is from #{@year} and has #{@wheels} wheels."
  end

end

my_toyota = Toyota.new 'Camry','2005'
# p my_toyota.show_toyota_info

class Honda < Car
  def initialize model, year
    super
  end

  def show_honda_info
    "#{@model} is from #{@year} and has #{@wheels} wheels."
  end

end

my_honda1 = Honda.new 'Civic','2004'
my_honda2 = Honda.new 'Civic','2005'
my_honda3 = Honda.new 'Civic','2006'
my_honda4 = Honda.new 'Civic','2007'
my_honda5 = Honda.new 'Civic','2008'
# p my_honda.show_honda_info

my_tesla1 = Tesla.new 'Model3','2016'
my_tesla2 = Tesla.new 'ModelS','2018'

class Garage
  def initialize
    @car_collection = []
  end

  def cars
    @car_collection
  end

  def sort_models
    @car_collection = @car_collection.sort_by {|car_instance| car_instance.model}
  end

  def sort_year
    @car_collection = @car_collection.sort_by {|car_instance| car_instance.year}
  end
end

garage_1 = Garage.new
garage_1.cars << my_tesla1
garage_1.cars << my_tesla2
garage_1.cars << my_honda1
garage_1.cars << my_honda2
# p garage_1.cars
# garage_1.sort_models
# p garage_1.cars

p garage_1.cars
garage_1.sort_year
p garage_1.cars








# Stretch Challenges
# Story: As a programmer, I can keep a collection of two of each kind of car model, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an array.
#
# Story: As a programmer, I can sort my collection of cars based on model.
#
# Story: As a programmer, I can sort my collection of cars based on year. Hint: Find out how the spaceship operator can help you with an array.
