require 'rspec'
require_relative 'task'

describe Task do
  #somtihng about tasks
  it 'I can create a task' do
    expect { Task.new 'sweep','oh how', 'done' }.to_not raise_error
  end

  it 'should require a title when initialized' do
    task1 = Task.new 'sweep', 'oh how', 'done'
    expect(task1.title).to eq 'sweep'
  end

  it 'something important' do
    task2 = Task.new 'dishes', 'oh how', 'done'
    expect(task2.description).to eq 'oh how'
  end
  it 'can mark a Task done. Tasks should be initialized as in progress.' do
    task3 = Task.new 'laundry', 'hate it, absolutely hate laundry', 'done'
    expect(task3.progress).to eq 'done'
  end
end

describe Tasklist do
  it 'can add all of my Tasks to a TaskList' do
    expect { Tasklist.new }
  end
end