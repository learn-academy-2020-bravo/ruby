require 'rspec'
require_relative 'Rspec-nikki-ruby-jeremy'

describe Task do

    it 'Can create an instance of Task' do
        expect { Task.new 'laundry', "dirty clothes in washer"}.to_not raise_error
    end

    it 'i can give an instance a title and retrieve it' do
        laundry = Task.new 'laundry', "dirty clothes in washer"
        expect(laundry.name).to eq 'laundry' 
    end

    it 'i can give an instance a description and retrieve it' do
        laundry = Task.new 'laundry', "dirty clothes in washer"
        expect(laundry.description).to eq "dirty clothes in washer"
    end

    it 'it initializes a task in progress unless a task is done' do
        laundry = Task.new 'laundry', "dirty clothes in washer"
        expect(laundry.status).to eq "in progress"
        laundry.done 
        expect(laundry.status).to eq "done"
    end
    
    it 'when I print a Task that is done, its status is shown' do
        laundry = Task.new 'laundry', "dirty clothes in washer"
        laundry.done
        expect(laundry.show_status).to eq "laundry is done"
    end
end


    