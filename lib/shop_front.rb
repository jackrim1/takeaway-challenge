require_relative 'menu'
require_relative 'order'

class ShopFront

  attr_reader :menu, :order_request, :final_order, :list, :bill_total, :correct

  def initialize(messager = Order.new)
    @menu = Menu.new
    @order_request = []
    @final_order
    @list
    @bill_total
    @correct
    @messager = messager
  end

  def print(this)
    this.list
  end

  def read_menu
    print(menu)
  end

  def order(name, number)
    @order_request << {name=>number}
    puts "#{number} x order of #{name} were added to your basket"
    @final_order = @order_request.inject{|k,v| k.merge(v) {|k, old_v, new_v| old_v + new_v}}
  end

  def bill_total
    return @final_order.map { |k, v| v * menu.list[k] if menu.list.key? k }.compact.inject(0){|sum,x| sum + x }.round(2)
  end

  def check_price(number)
    fail "The total you have entered is not correct" if number != bill_total
    @messager.send_text
  end

end