require 'date'

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

    def incomplete_items_due_today date
        items = @task.select { | value |
        value.progress == 'in progress' && value.date.strftime('%a %d %b %Y') == date
    }
        items.map { | value |
        value.label
    }
    end

    def incomplete_items_by_date
        #filtering out all completed items
        items = @task.select { | value |
        value.progress == 'in progress'
    }
        #sorting the items by date.  date is converted into seconds.
        sorted_items = items.sort_by { | value |
          puts value.date
          puts value.date.strftime("%s").to_i
          value.date.strftime("%s").to_i
    }
        #identifying the object by label
        sorted_items.map { | value |
        value.label
    }
    end
end

class DueDateTask < Task
  def initialize (date, title, description)
    super(title, description)
    @date = date
  end

  def date
    @date
  end
end

# timed_task = DueDateTask.new Date.new(2002,4,5), "Laundry", "folding clothes"
# p timed_task.date.strftime('%a %d %b %Y')

class Item
  def initialize (date, label, value)
    @date = date
    @label = label
    @value = value
    @progress = 'in progress'
  end

  def date
    @date
  end

  def label
    @label
  end

  def value
    @value
  end

  def progress
    @progress
  end

  def complete_task
      @progress = 'complete'
  end

  def item_info
    "This item is #{@label}.  It is worth #{@value}.  Its due date is #{@date.strftime('%a %d %b %Y')}"
  end
end
