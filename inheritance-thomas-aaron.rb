class Car
  def initialize
    @model = "generic car"
    @year = "my_car year"
    @lights = "Off"
    @turn_signal = "Off"
    @speed = 0
    @wheels = 4
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

  def light_switch
    if (@lights == "On")
      @lights = "Off"
    else @lights = "On"
    end
  end

  def turn_signal_switch signal
    @turn_signal = signal
  end

  def car_info
    puts "This car's model is #{@model}.  Its year is #{@year}.  The lights are #{@lights}.  The turn signal is #{@turn_signal}.  It is currently going #{@speed} mph.  It has #{@wheels} wheels."
  end
end

# my_car = Car.new
# puts my_car.wheels

class Tesla < Car
  def initialize (model, year)
    super()
    @model = model
    @year = year
  end

  def accelerate
    @speed += 10
  end

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

class Toyota < Car
  def initialize (model, year)
    super()
    @model = model
    @year = year
  end

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



class Honda < Car
  def initialize (model, year)
    super()
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
