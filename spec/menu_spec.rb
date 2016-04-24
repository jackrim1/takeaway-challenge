require 'menu'

describe Menu do
subject(:menu) { described_class.new }
let(:menu) { double :menu, list: {'chow mein'=>1.99, 'pork balls'=>1.45, 'spicy ribs'=>3.23} }

  it 'initializes with the menu list' do
    expect(menu.list).to be menu.list
  end

end