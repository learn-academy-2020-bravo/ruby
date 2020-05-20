require 'rspec'
require_relative 'task'

describe Task do
  #somtihng about tasks
  it 'I can create a task' do
    expect { Task.new 'sweep','oh how', '' }.to_not raise_error
  end

  it 'should require a title when initialized' do
    task1 = Task.new 'sweep', 'oh how', ''
    expect(task1.title).to eq 'sweep'
  end

  it 'something important' do
    task2 = Task.new 'dishes', 'oh how', ''
    expect(task2.description).to eq 'oh how'
  end


end
