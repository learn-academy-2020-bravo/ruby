require 'rspec'
require_relative 'coffee'

describe Coffee do
  # can it be created
  it 'Can create an instance of coffee' do
    expect { Coffee.new 'medium' }.to_not raise_error
  end

  # can have a roast
  it 'should rquire a roast when it is created' do
    my_coffee = Coffee.new 'medium'
    expect(my_coffee.roast).to eq 'medium'
  end

  # is brewed in a pot, unless stated
  it "is brewed in a pot, unless stated otherwise" do
    coffee_two = Coffee.new 'light'
    expect(coffee_two.brew).to eq 'pot'
    coffee_three = Coffee.new 'dark', 'pour over'
    expect(coffee_three.brew).to eq 'pour over'
  end


  # oz of milk can be added to coffee
  it "has no milk unless oz of milk are added to coffee" do
    coffee_four= Coffee.new 'dark'
    expect(coffee_four.milk).to eq '0 oz'
    coffee_four.add_milk 2
    expect(coffee_four.milk).to eq '2 oz'
  end
end
