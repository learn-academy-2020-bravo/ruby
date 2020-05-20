class Task
  def initialize title, description, progress = 'in progress'
    @title = title
    @description = description
    @progress = progress
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

  def progress_done
    @progress = 'done'
  end
end

class Tasklist < Task
  def initialize
    @tasklist = []
  end
end
