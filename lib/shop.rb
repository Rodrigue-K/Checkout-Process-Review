class Shop 
    attr_reader :inventory
    def initialize
        @inventory = {'A' => 50, 'B' => 30 , 'C' => 20 , 'D' => 15 }
    end

    def checkout(item)
        if item.class == String && item == item.upcase
            items = item.split('')
            total = 0
            items.each do |item| 
                total += @inventory[item]
            end
            total
        else
            -1 
        end
      end

      private
    
end