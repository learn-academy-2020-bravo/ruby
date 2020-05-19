# User Stories
# Story: As a developer, I can create a Task.
#
# Story: As a developer, I can give a Task a title and retrieve it.
#
# Story: As a developer, I can give a Task a description and retrieve it.
#
# Story: As a developer, I can mark a Task done.
#
# Story: As a developer, when I print a Task that is done, its status is shown.

class Task
  def initialize
    @chore1 = "dishes"
    @chore2 = "vacuuming"
    @chore3 = "laundry"
  end

  def get_task
    "#{@chore1} #{@chore3} needs to be done!"
  end

  def done_task
    "#{@chore2} is done!"
  end
end

kitchen = Task.new
p kitchen.get_task
p kitchen.done_task
