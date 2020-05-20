require 'rspec'
require_relative 'task'

describe Task do
    # Story: As a developer, I can create a Task.
    it 'Can create an instance of task' do
        expect { Task.new 'laundry', 'wash up the dishes' }.to_not raise_error
    end
    # Story: As a developer, I can give a Task a title and retrieve it.
    it 'Should create a title and be retrieveable' do
        task_1 = Task.new 'laundry', 'wash socks'
        expect(task_1.title).to eq 'laundry'
    end
    # Story: As a developer, I can give a Task a description and retrieve it.
    it 'Should create a description of task and retrieve it' do
        task_2 = Task.new 'dishes', 'wash up the dishes'
        expect(task_2.description).to eq 'wash up the dishes'
    end
    # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
    it 'Should show task is being initialized as in progress' do
        task_3 = Task.new 'gardening', 'plant roses'
        expect(task_3.status).to eq 'in progress'
        task_4 = Task.new 'feed fish', 'open food for fish', 'done'
        expect(task_4.status).to eq 'done'
    end
    # Story: As a developer, when I print a Task that is done, its status is shown.
end

# User Stories
# Story: As a developer, I can add all of my Tasks to a TaskList.
# Story: As a developer with a TaskList, I can print the completed items.
# Story: As a developer with a TaskList, I can print the incomplete items.