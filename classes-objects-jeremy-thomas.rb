class Task
  def initialize (title, description)
    @title = title
    @description = description
    @status = 'not done'
  end

  def get_title
    @title
  end

  def get_description
    "#{@title} involves #{@description} and is currently #{@status}"
  end

  def set_status
    @status = 'done'
  end
end

laundry = Task.new "Laundry", "putting dirty clothes into the washer"
# p laundry.get_title
#
# p laundry.get_description
laundry.set_status
p laundry.get_description
