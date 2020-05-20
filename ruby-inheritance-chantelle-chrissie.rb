# Challenge: Car Challenge
# Programmer Stories
# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"
# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"
# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car 
    def initialize (model, year)
        @model = model
        @year = year
        @wheels = 4
        @lights = "off"
        @signals = "off"
        @speed = 0
    end
    
    def turn_on_lights
        @lights = "on"
    end

    def turn_off_lights
        @lights = "off"
    end

    def light_status
        "The lights are #{@lights}."
    end

    def signals direction
        @signals = direction
    end

    def signal_status
        if @signals == "right"
            "You are signaling right."
        elsif @signals == "left"
            "You are signaling left."
        elsif @signals == "off"
            "Your signals are off."
        else
            "You are signaling #{@signals}. Is that a real thing? "
        end
    end

    def check_speed
        "You are going #{@speed} mph. WOW. Go you."
    end

    def wheels
        @wheels
    end

    def to_s
        "Thank you for requesting information on your #{@year} #{@model}. Currently, you have #{@wheels} wheels on your #{@model}. It is operating at #{@speed} mph. Your lights are #{@lights} and your signals are #{@signals}."
    end

end

my_car = Car.new "generic car", 1999
my_car

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.
# Story: As a programmer, I can give my Tesla a model on initialization.
# Story: As a programmer, I can give my Tesla a year on initialization.
class Tesla < Car
    def initialize model, year
        super(model,year)
    end
    
    def tesla_info
        "This Tesla is a #{@model} made in #{@year}."
    end

    def speed_up_tesla
        @speed += 10
    end

    def slow_down_tesla
        if @speed - 7 < 0
            @speed = 0
        else
            @speed -= 7
        end
    end

end

my_tesla = Tesla.new "Model S", 2019
# p my_tesla.tesla_info
# p my_tesla.check_speed
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla
# p my_tesla.speed_up_tesla

# p my_tesla.check_speed
# p my_tesla.slow_down_tesla
# p my_tesla.check_speed
# p my_tesla.slow_down_tesla
# p my_tesla.check_speed

# Story: As a programmer, I can make a Toyota car.
# Story: As a programmer, I can give my Toyota a model on initialization.
# Story: As a programmer, I can give my Toyota a year on initialization.
class Toyota < Car
    def initialize model, year
        super(model,year)
    end
    
    def toyota_info
        "This Toyota is a #{@model} made in #{@year}."
    end

    def speed_up_toyota
        @speed += 7
    end

    def slow_down_toyota
        if @speed - 5 < 0
            @speed = 0
        else
            @speed -= 5
        end
    end
end

my_toyota = Toyota.new "Land Cruiser", 1987
my_toyota.toyota_info


# Story: As a programmer, I can make a Honda car.
# Story: As a programmer, I can give my Honda a model on initialization.
# Story: As a programmer, I can give my Honda a year on initialization.
class Honda < Car
    def initialize model, year
        super(model,year)
        @honda_collection = []
    end
    
    def honda_info
        "This Honda is a #{@model} made in #{@year}."
    end

    def get_honda vehicle
        @honda_collection << vehicle
    end

    def speed_up_honda
        @speed += 5
    end

    def slow_down_honda
        if @speed - 2 < 0
            @speed = 0
        else
            @speed -= 2
        end
    end
   
    def add_hondas ride
        @honda_collection << ride
    end


end



class Collection 
    def initialize (newmodel)
        @newmodel = newmodel
    end
    def newmodel
        @newmodel
    end
end

first_honda = Honda.new "Civic", 2004
second_honda = Collection.new ("Accord")
first_honda.add_hondas (second_honda.newmodel)
p first_honda.add_hondas ()



# Story: As a programmer, I can turn on and off the lights in my cars. Lights start in the off position.
# Story: As a programmer, I can signal left and right. Turn signals starts off.



# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
# Story: As a programmer, I can slow my Teslas down by 7 per braking.

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

# Story: As a programmer, I can speed my Hondas up by 5 per acceleration.
# Story: As a programmer, I can slow my Hondas down by 2 per braking.

# Story: As a programmer, I can call upon a car to tell me all its information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

# Stretch Challenges
# Story: As a programmer, I can keep a collection of two of each kind of car model, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an array.
# Story: As a programmer, I can sort my collection of cars based on model.
# Story: As a programmer, I can sort my collection of cars based on year. Hint: Find out how the spaceship operator can help you with an array.