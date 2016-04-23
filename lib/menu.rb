require_relative 'order'

class Menu

  attr_reader :list

  def initialize
    @list = [{'chow mein'=>1.99}, {'pork balls'=>1.45}, {'spicy ribs'=>3.23}]
  end

  def add_dish(name, price)
    @list << {name=>price}
  end

end