require 'menu'

describe Menu do
subject(:menu) { described_class.new }

  it 'can have dishes added to the list' do
        menu.add_dish("chow mein", 1.99)
        expect(menu.list.last).to eq({"chow mein"=>1.99})
  end

end