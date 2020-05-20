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

class TaskList
  def initialize
    super()
      @tasklist = []
  end

  def tasklist
    @tasklist
  end

  def tasklist_completed
    tasklist.select do |value|
      value.status == "done"
    end.map do |value|
      value.name
    end
  end

end

laundry = Task.new "laundry","dirty clothes in washer"
dishes = Task.new "dishes","wash dishes"
my_tasklist = TaskList.new
my_tasklist.tasklist << laundry
my_tasklist.tasklist << dishes

p my_tasklist.tasklist
