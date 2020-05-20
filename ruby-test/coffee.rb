class Coffee
  def initialize roast, brew = 'pot'
    @roast = roast
    @brew = brew
    @milk = 0
  end

  def roast
    @roast
  end
  def brew
    @brew
  end

  def add_milk num
    @milk += num
  end

  def milk
    "#{@milk} oz"
  end

end


espresso = Coffee.new 'espresso'
p espresso.roast
