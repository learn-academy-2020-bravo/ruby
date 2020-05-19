# class Task
#   def initialize (title, boolean)
#       @status = boolean
#       @title = title
#   end
#
#
#     def get_info
#       if @status == true
#         "#{@title} is complete"
#       else
#         "#{@title} is incomplete"
#       end
#     end
#
#   end
#   #
#   task1 = Task.new('sweeping', true)
  # task2 = Task.new('Dishes', false)
  #
  #
  # p task1.get_info
  # p task2.get_info
  class Vehicle

    def initialize(year, make, model, quick)
      @year = year
      @make = make
      @model = model
      @quick = quick
    end

    def get_vehicle_info
      p @year
      p @make
      p @model
    end


    def show_vehicle_info
      # When using string interpolation with an instance variable, you can simply put a # followed by the name of the variable
      puts "This is a #@year #@make #@model."
    end

    def show_racer_info
      puts "That #@model is quick #@quick"
    end
  end

#
# corrollllllllaaaa = Vehicle.new(1998, "toyota", "corrolla")
# corrollllllllaaaa.show_vehicle_info




musk_mobile = Vehicle.new(2020, "Tesla", "Roadster", "yea")
musk_mobile.get_vehicle_info
