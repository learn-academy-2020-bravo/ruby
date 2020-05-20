 class Car #this is our base/parent class 
  def initialize #similiar to state components basically variables 
    @model = "generic car"
    @year = "my_car year"
    @lights = "Off"
    @turn_signal = "Off"
    @speed = 0
    @wheels = 4
  end
#these are all display methods
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

  def turn_signal
    @turn_signal
  end

  def speed
    @speed
  end
   #changes the light switch variable everytime its called 
  def light_switch
    if (@lights == "On")
      @lights = "Off"
    else @lights = "On"
    end
  end
# turn signal is given whatever value passed into it
  def turn_signal_switch signal
    @turn_signal = signal
  end
# string interpolation uses all variables from init to give us the current state of the car
  def car_info
    puts "This car's model is #{@model}.  Its year is #{@year}.  The lights are #{@lights}.  The turn signal is #{@turn_signal}.  It is currently going #{@speed} mph.  It has #{@wheels} wheels."
  end
end

# my_car = Car.new
# puts my_car.wheels


class Tesla < Car #retrieves variables not declared in tesla so it gets wheels etc..
  def initialize (model, year)
    super() #ask instructor or look up
    @model = model
    @year = year
  end
  #this is specific to the child class
  def accelerate
    @speed += 10
  end
  #this is specific to the child class
  def brake
    @speed -= 7
    if (@speed < 0)
      @speed = 0
    end
  end
end
   
   my_tesla = Tesla.new('tesla', '2015')
   my_tesla.light_switch
 # puts my_tesla.lights
   my_tesla.light_switch
 # puts my_tesla.lights
   my_tesla.turn_signal_switch "left"
 # puts my_tesla.turn_signal
 # puts my_tesla.speed
   my_tesla.accelerate
   my_tesla.accelerate
   my_tesla.accelerate
 # puts my_tesla.speed
   my_tesla.brake
 # puts my_tesla.speed
   my_tesla.car_info

   #inheriting from Car
class Toyota < Car
  def initialize (model, year)
    super()
    @model = model
    @year = year
  end
  #unique to Toyota
  def accelerate
    @speed += 7
  end

  def brake
    @speed -= 5
    if (@speed < 0)
      @speed = 0
    end
  end
end


#inherits variables from parent class of var
class Honda < Car
  def initialize (model, year)
    super() #we need model and year because its specific to Honda, it overrides parent values 
    @model = model
    @year = year
  end

  def accelerate
    @speed += 5
  end

  def brake
    @speed -= 2
    if (@speed < 0)
      @speed = 0
    end
  end
end

#we can add to our collection based on model and year
class Collection 
  def initialize
    @car_model = []
    @car_years = []
  end
  #shovels cars into the array
  def car_years cars
    @car_years << cars
  end

  def display_year 
    @car_years
  end

  def add_cars cars
    @car_model << cars
  end
 
  def cars 
    @car_model
  end
  # sorts car by the year
  def sort_cars
    @car_years = @car_years.sort
  end
 
  def sort_alpha
    @car_model = @car_model.sort
  end
end

collection_cars = Collection.new
tesla1 = Tesla.new('tesla', '2015')
tesla2 = Tesla.new('tesla', '2020')
honda1 = Honda.new('civic', '2000')
honda2 = Honda.new('supra', '1988')
toyota1 = Toyota.new('red', '1990')
toyota2 = Toyota.new('black', '1988')

collection_cars.add_cars(tesla1.model)
collection_cars.add_cars(tesla2.model)
collection_cars.add_cars(honda1.model)
collection_cars.add_cars(honda2.model)
collection_cars.add_cars(toyota1.model)
collection_cars.add_cars(toyota2.model)

collection_cars.car_years(tesla1.year)
collection_cars.car_years(tesla2.year)
collection_cars.car_years(honda1.year)
collection_cars.car_years(honda2.year)
collection_cars.car_years(toyota1.year)
collection_cars.car_years(toyota2.year)



# p collection_cars.cars
# p collection_cars.display_year
# p collection_cars.display_year 
# collection_cars.sort_cars
# p collection_cars.display_year


p collection_cars.cars.sort
 collection_cars.sort_alpha