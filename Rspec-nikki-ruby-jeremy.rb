class Task
    def initialize name,description
        @name = name
        @description = description
        @status = "in progress"
    end

    def name
        @name
    end

    def description
        @description
    end

    def done
        @status = "done"
    end

    def status
        @status 
    end  
    
    def show_status
       p "#{@name} is #{@status}"
    end
end

laundry = Task.new "laundry","dirty clothes in washer"
  
