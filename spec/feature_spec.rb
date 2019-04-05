require 'shop'

RSpec.describe 'checkout with valid' do
    let(:shop) { Shop.new }
    context 'checking out valid item from shop inventory' do
        it 'returns price of  valid item' do 
            expect(shop.checkout('A')).to eq(50)
        end 
    end
    context 'checking out multiple valid items from shop inventory' do
        it 'returns price of  valid item' do 
            expect(shop.checkout('AA')).to eq(100)
        end 
        
        it 'returns price of valid items with discount' do 
            expect(shop.checkout('AAA')).to eq(130)
        end
    end
end 