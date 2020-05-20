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
  # def get_title
  #   "#{@title}"
  # end
  #
  # #
  # def get_descrip
  #   "#{@description}"
  # end
end
#
# task1 = Task.new 'sweep'
# p task1.get_title
# task2 = Task.new 'dishes', 'oh how'
# # p task2.get_descrip
