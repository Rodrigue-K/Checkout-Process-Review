require 'shop'

RSpec.describe Shop do
    let(:shop) { Shop.new }
    
    describe '#initialize' do
        it 'contains an inventory' do 
            expect(shop.inventory).to eq({'A' => 50, 'B' => 30 , 'C' => 20 , 'D' => 15 })
        end
     end
     
     describe '#checkout' do 
        context 'checkout valid items' do
            it 'returns the total price of selected items' do 
                expect(shop.checkout('A')).to eq(50)
            end 
            
            it 'returns the total price of two selected items' do
                expect(shop.checkout('AA')).to eq(100)
            end

            it 'returns the total price of three selected items' do
                expect(shop.checkout('ABC')).to eq(100)
            end 
        end

        context 'checkout invalid items' do 
            it 'returns -1 for an integer invalid item' do 
                expect(shop.checkout(18)).to eq(-1)
                expect(shop.checkout('aBN')).to eq(-1)
                expect(shop.checkout('-aBN')).to eq(-1)
            end
        end
    end
end