

class CashRegister

   
    attr_accessor :discount, :total, :quantity

     def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
        @prices_array = []
        @quantity_array = []
     end

    

     def add_item(title, price, quantity=1)
        @total += (price * quantity)
       @title = title
      quantity.times do 
         @all_items << title
      end
      quantity.times do 
         @prices_array << price
      end
      @quantity_array << quantity


     end

     def apply_discount
        if @discount == 0 
            return "There is no discount to apply."
        end
        @total = @total - @discount * 10
        return "After the discount, the total comes to $#{@total}."
     end

     def items
        @all_items
     end
     


        def void_last_transaction
         @quantity_array[-1].times do 
            @total -= @prices_array[-1]
            @all_items.pop()
         end
            if @all_items == []
               return @total = 0.0
            end
            
        end


end

