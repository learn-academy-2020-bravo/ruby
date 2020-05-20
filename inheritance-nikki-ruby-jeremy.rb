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

  def get_speed
    @speed
  end

  def get_info
    "My car is a #{@model} and year #{@year} and is currently at the speed of #{@speed} mph and the lights are #{@lights}"
  end


  def get_year
    @year
  end

  def get_model
    @model
  end

end

class Tesla < Car
  def initialize (model, year)
    super(model, year)
      @model = model
      @year = year
      
  end

  def tesla_speed
    @speed += 10
  end

  def tesla_brake
    @speed -= 7
  end


end

class Toyota < Car
  def initialize (model, year)
    super(model, year)
      @model = model
      @year = year
  end

  def toyota_speed
    @speed += 7
  end

  def toyota_brake
    @speed -= 5
  end

  
end

class Honda < Car
  def initialize (model, year)
    super(model, year)
      @model = model
      @year = year
  end

  def honda_speed
    @speed += 5
  end

  def honda_brake
    @speed -= 2
  end
end

# my_tesla = Tesla.new("x2020", 2021)

my_toyota = Toyota.new("camery", 1997)

my_honda = Honda.new("accord", 1889)



class Garage
    def initialize
        @collection = []
    end

    def get_collection
        @collection
    end


end

tesla_2 = Tesla.new("Model 3", 1969)

tesla_3 = Tesla.new("Model 3", 19420)

my_garage = Garage.new

my_garage.get_collection << tesla_3.get_model
my_garage.get_collection << tesla_2.get_model

p my_garage.get_collection




