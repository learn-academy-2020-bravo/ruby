class Task
  def initialize description = 'put clothes in the laundary machine', status ='in progress'
    @description = description
    @status = status
  end

  def change_status
    @status='done'
  end

  def status
    @status
  end

  def description
    @description
  end

  def title=my_task
    @title = my_task
  end
  def title
    @title
  end
end

class TaskList
  def initialize
    @tasks = []
  end

  def add_tasks
    @tasks
  end

  def completed_tasks
      tasks.select { |task| task.status == 'done' }
  end

  def incompleted_tasks
      tasks.select { |task| task.status == 'in progress'}
  end
  
end





# Story: As a developer, I can add all of my Tasks to a TaskList.
#
# Story: As a developer with a TaskList, I can print the completed items.
#
# Story: As a developer with a TaskList, I can print the incomplete items.
