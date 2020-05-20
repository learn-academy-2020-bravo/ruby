class Car
  def initialize model, year,
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

  def show_car_info
    "this car is a #{@year} #{@model}. It has #{@wheels} wheels. It's lights are #{@lights}. The turn signal is set too #{@turnsignal}, and its speed is #{@speed}."
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
p my_tesla.show_car_info





class Toyota < Car
  def initialize model, year
    super(wheels, lights)
    @model = model
    @year = year
  end

  def model
    @model
  end

  def year
    @year
  end
end





class Honda < Car
  def initialize model, year
    super(wheels, lights)
    @model = model
    @year = year
  end

  def model
    @model
  end

  def year
    @year
  end
end
