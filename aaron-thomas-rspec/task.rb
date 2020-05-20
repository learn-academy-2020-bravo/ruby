class Task 
    def initialize title, description
        @title = title
        @description = description
        @progress = 'in progress'
    end
   
    def title
        @title
    end

    def description
        @description
    end

    def progress
        @progress
    end
    
    def complete_task
        @progress = 'complete'
    end

end

class TaskList
    def initialize
        @task = []
    end

    def task
        @task
    end

    def add_task chore
        @task << chore
    end
    
    def completed_items
        items = @task.select { | value |
            value.progress == 'complete'
        }
        items.map { | value |
            value.title
        }
    end

    def incomplete_items
        items = @task.select { | value |
        value.progress == 'in progress'
    }
    items.map { | value |
        value.title
    }
    end
end
