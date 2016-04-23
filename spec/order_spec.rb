require 'order'
require 'menu'

describe Order do
subject(:order) { described_class.new }
let(:menu) { double :menu, list: [{'chow mein'=>1.99}, {'pork balls'=>1.45}, {'spicy ribs'=>3.23}] }


  it 'allow a user to read the menu' do
    expect(order.read_menu).to eq menu.list
  end

end
