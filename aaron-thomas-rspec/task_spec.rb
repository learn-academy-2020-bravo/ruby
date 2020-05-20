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

#  Story: As a developer, I can create a DueDateTask, which is_a Task that has_a due date. Hint: Use the built-in Ruby Date class

it 'creates a new task that also includes a due date' do
    timed_task = DueDateTask.new Date.new(2002,4,5), "Laundry", "folding clothes"
    expect(timed_task.date.strftime('%a %d %b %Y')).to eq "Fri 05 Apr 2002"
end

# Story: As a developer, I can print an item with a due date with labels and values. Hint: When implementing to_s, use super to call to_s on the super class.
it 'creates a new item with label, value and due date' do
    chair = Item.new Date.new(2002,4,5), "chair", "$19.99"
    expect(chair.item_info).to eq "This item is chair.  It is worth $19.99.  Its due date is Fri 05 Apr 2002"
end

# Story: As a developer, I can add items with due dates to my TaskList. Hint: Consider keeping items with due dates separate from the other items.

it 'adds items with due dates to task list' do
    laundry = Task.new "laundry", "your laundry"
    dishes = Task.new "dishes", "your dishes"
    sweeping = Task.new "sweeping", "done sweeping"
    chair = Item.new Date.new(2002,4,5), "chair", "$19.99"
    task_collection = TaskList.new
    task_collection.add_task laundry
    task_collection.add_task dishes
    task_collection.add_task sweeping
    task_collection.add_task chair
    expect(task_collection.task).to eq [laundry, dishes, sweeping, chair]
 end

# Story: As a developer with a TaskList, I can list all the not completed items that are due today.

it 'adds items with due dates to task list' do
    chair1 = Item.new Date.new(2005,4,5), "chair1", "$19.99"
    chair2 = Item.new Date.new(2006,4,5), "chair2", "$29.99"
    chair3 = Item.new Date.new(2002,4,5), "chair3", "$39.99"
    chair4 = Item.new Date.new(2002,4,5), "chair4", "$49.99"
    task_collection = TaskList.new
    chair4.complete_task
    task_collection.add_task chair1
    task_collection.add_task chair2
    task_collection.add_task chair3
    task_collection.add_task chair4
    expect(task_collection.incomplete_items_due_today "Fri 05 Apr 2002").to eq ["chair3"]
 end

# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
it 'all incomplete items sorted by due date' do
    chair1 = Item.new Date.new(2012,4,5), "chair1", "$19.99"
    chair2 = Item.new Date.new(2006,4,5), "chair2", "$29.99"
    chair3 = Item.new Date.new(2008,4,5), "chair3", "$39.99"
    chair4 = Item.new Date.new(2008,4,2), "chair4", "$49.99"
    task_collection = TaskList.new
    chair4.complete_task
    task_collection.add_task chair1
    task_collection.add_task chair2
    task_collection.add_task chair3
    task_collection.add_task chair4
    expect(task_collection.incomplete_items_by_date).to eq ["chair2", "chair3", "chair1"]
 end


# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
end
