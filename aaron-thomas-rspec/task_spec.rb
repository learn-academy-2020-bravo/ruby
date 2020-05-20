require 'rspec'
require_relative 'task'

describe Task do 
# Story: As a developer, I can create a Task.
it 'can give a task a title' do
    expect { Task.new "sweeping", "sweeping around the bush"}.to_not raise_error
end

# Story: As a developer, I can give a Task a title and retrieve it.
it 'give a task a title and retrieve it' do
   laundry = Task.new "laundry", "your laundry" 
    expect(laundry.title).to eq "laundry"
end

# Story: As a developer, I can give a Task a description and retrieve it.
it 'give a task a description and retrieve it' do
    laundry = Task.new "laundry", "your laundry" 
     expect(laundry.description).to eq "your laundry"
 end
# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
it 'I can mark a task as done' do
    laundry = Task.new "laundry", "your laundry" 
    laundry.complete_task
     expect(laundry.progress).to eq "complete"
 end

# Story: As a developer, I can add all of my Tasks to a TaskList.
it 'I can add my task to a list' do
    laundry = Task.new "laundry", "your laundry" 
    dishes = Task.new "dishes", "your dishes" 
    sweeping = Task.new "sweeping", "done sweeping" 
    task_collection = TaskList.new 
    task_collection.add_task laundry
    task_collection.add_task dishes
    task_collection.add_task sweeping
    expect(task_collection.task).to eq [laundry, dishes, sweeping]
 end
# Story: As a developer with a TaskList, I can print the completed items.
it 'print comepleted items' do
    laundry = Task.new "laundry", "your laundry" 
    dishes = Task.new "dishes", "your dishes" 
    sweeping = Task.new "sweeping", "done sweeping" 
    dishes.complete_task
    task_collection = TaskList.new 
    task_collection.add_task laundry
    task_collection.add_task dishes
    task_collection.add_task sweeping
    expect(task_collection.completed_items).to eq ["dishes"]
 end
# Story: As a developer with a TaskList, I can print the incomplete items.
it 'print incomplete items' do
    laundry = Task.new "laundry", "your laundry" 
    dishes = Task.new "dishes", "your dishes" 
    sweeping = Task.new "sweeping", "done sweeping" 
    dishes.complete_task
    task_collection = TaskList.new 
    task_collection.add_task laundry
    task_collection.add_task dishes
    task_collection.add_task sweeping
    expect(task_collection.incomplete_items).to eq ["laundry", "sweeping"]
 end
end