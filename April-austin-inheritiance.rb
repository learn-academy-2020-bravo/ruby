class Car
  def initialize model, year
    @model = 'generic car'
    @year= 'my_car year'
    @wheels= 4
    @lights= 'off'
    @turnsignal= 'off'
    @speed= 0
  end
  def model
    @model
  end

  def year
    @year
  end

  def lights_on_off
    @lights
  end

  def turn_signal
    @turnsignal
  end

  def speed
    @speed
  end

  def lights_on
    @lights = "on"
  end

  def lights_off
    @lights = "off"
  end

  def turn_right
    @turnsignal = "right"
  end

  def turn_left
    @turnsignal = "left"
  end

  def turn_off
    @turnsignal = "off"
  end

  def show_car_info
    "this car is a #{@year} #{@model}. It has #{@wheels} wheels. It's lights are #{@lights}. The turn signal is set to #{@turnsignal}, and its speed is #{@speed}."
  end
end



class Tesla < Car
  def initialize model, year
    super
    @model = model
    @year = year
    end

    def accelerate
      @speed = @speed + 10
    end
    def decelerate
      @speed = @speed - 7
    end

  end

my_tesla = Tesla.new "model S", "2020"
my_tesla.accelerate
my_tesla.accelerate
my_tesla.decelerate
# p my_tesla.show_car_info





class Toyota < Car
  def initialize model, year
    super
    @model = model
    @year = year
  end

  def model
    @model
  end

  def year
    @year
  end

  def accelerate
    @speed = @speed + 7
  end
  def decelerate
    @speed = @speed - 5
  end
end

my_new_toyota = Toyota.new("Avalon", "1998")
my_new_toyota.lights_on
p my_new_toyota.show_car_info




class Honda < Car
  def initialize model, year
    super
    @model = model
    @year = year
  end

  def model
    @model
  end

  def year
    @year
  end
  def accelerate
    @speed = @speed + 5
  end
  def decelerate
    @speed = @speed - 2
  end
end

my_new_honda = Honda.new("NSX", "1994")
my_new_honda.accelerate
my_new_honda.decelerate
p my_new_honda.show_car_info
