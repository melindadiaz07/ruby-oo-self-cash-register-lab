
class CashRegister

     def initialize(discount = 0)
        @total = 0
        @discount = discount
     end

     attr_accessor :discount, :total, :quantity, 

     def total
        return @total 
     end

     def add_item(title, price, quantity=1)
        @total = @total + (price * quantity)
       
     end

     def apply_discount
        if @discount == 0 
            return "There is no discount to apply."
        end
        @total = @total - @discount * 10
        return "After the discount, the total comes to $#{@total}."
     end

     def items 
        items_array = []
        
        return items_array
     end



end

