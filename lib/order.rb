require_relative 'menu'

class Order

  attr_reader :selection

  def initialize
   @selection = Menu.new
  end

  def print(choice)
    choice.list
  end

  def read_menu
    print(selection)
  end
end