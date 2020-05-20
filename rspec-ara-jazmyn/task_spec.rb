require 'rspec'
require_relative 'task'

describe Task do
  it 'can create an instance of task' do
    expect { Task.new }.to_not raise_error
  end

  it 'can give a Task a title and retrieve it' do
    my_task = Task.new
    my_task.title = 'laundary'
    expect(my_task.title).to eq 'laundary'
    expect(my_task.title).to be_a String
  end

  it 'can give a Task a description and retrieve it' do
    my_task = Task.new
    expect(my_task.description).to eq 'put clothes in the laundary machine'
    expect(my_task.description).to be_a String
    my_laundry_task = Task.new 'put clothes in a machine'
    expect(my_laundry_task.description).to eq 'put clothes in a machine'
  end
  it 'shows initial status' do
    my_task = Task.new
    expect(my_task.status).to eq 'in progress'
    expect(my_task.status).to be_a String
  end
  it 'shows finished status' do
    my_change_status_task = Task.new
    my_change_status_task.change_status
    expect(my_change_status_task.status).to be_a String
    expect(my_change_status_task.status).to eq 'done'
  end
end

describe TaskList do
  it 'can create a TaskList' do
  expect { TaskList.new }.to_not raise_error
  end

  it 'can add all tasks to the tasklist' do
    my_tasks = TaskList.new
    expect(my_tasks.add_tasks).to be_a Object
  end

  it 'prints completed tasks' do
    completed_tasks = TaskList.new
    expect(tasks.status).to be_a Array
  end

  it 'prints incompleted tasks' do
    incompleted_tasks = TaskList.new
    expect(tasks.status).to be_a Array
  end

end
