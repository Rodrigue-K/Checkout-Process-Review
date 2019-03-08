require 'shop'

RSpec.describe 'checkout with valid' do
    context 'checking out valid item from shop inventory' do
        let(:shop) { Shop.new }
        it 'returns price of  valid item' do 
        expect(shop.checkout('A')).to eq(50)
        end 
    end
    context 'checking out multiple valid items from shop inventory' do
        let(:shop) { Shop.new }
        it 'returns price of  valid item' do 
        expect(shop.checkout('AA')).to eq(100)
        end 
    end
end 