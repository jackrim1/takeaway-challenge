require 'shop_front'
require 'menu'

describe ShopFront do
subject(:shop_front) { described_class.new }
let(:menu) { double :menu, list: {'chow mein'=>1.99, 'pork balls'=>1.45, 'spicy ribs'=>3.23} }
let(:sample_order) {
  shop_front.order('pork balls', 2)
  shop_front.order('pork balls', 2)
}

  it 'allow a user to read the menu' do
    expect(shop_front.read_menu).to eq menu.list
  end

  it 'updates the order request each time an order is placed' do
    sample_order
    expect(shop_front.order_request).to be {{'pork balls'=>4}}
  end

  it 'calculates the total bill' do
    sample_order
    expect(shop_front.bill_total).to eq 5.80
  end

  it 'raises an error if the customers expected bill is not the actual total' do
    sample_order
    shop_front.check_price(5.80)
    expect{shop_front.check_price(5.80 + 1)}.to raise_error "The total you have entered is not correct"
  end

end

