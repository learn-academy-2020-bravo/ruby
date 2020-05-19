# Challenge: Tasklist
# User Stories
# Story: As a developer, I can create a Task.

# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done.

# Story: As a developer, when I print a Task that is done, its status is shown.

class Task 

    def initialize(title, description)
        @title = title
        @description = description
        @completion_status = 'incomplete'
    end

    def get_title
        @title
    end

    def get_description
        @description
    end

    def get_status
       puts "Your task is #{@title}. You must #{@description}. Your status is #{@completion_status}" 
    end

    def set_status new_status
        @completion_status = new_status
        puts "Your task of #{@title} status is #{@completion_status}"
    end
end

laundry = Task.new 'laundry', 'wash clothes'
# puts laundry.get_title
# puts laundry.get_description
# puts laundry.get_status
# puts laundry.set_status 'donezo'


yard_work = Task.new 'Gardening', 'weed the flower beds'
puts yard_work.get_status
puts yard_work.set_status 'finito'