require 'pry'

class CashRegister
  attr_accessor :discount, :total
<<<<<<< HEAD
  attr_reader :item, :price, :quantity
=======
>>>>>>> 4d1a9996e6f52eeface9e75e9cb388ec11440186
  # attr_writer :total
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
<<<<<<< HEAD
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    @item, @price, @quantity = item, price, quantity
    @total += @price * @quantity
    @quantity.times {@cart << item}
  end

  def apply_discount
    message = ""
    if @discount > 0
      @total -= (@discount/100.to_f)*@total
      message = "After the discount, the total comes to $#{@total.to_i}."
    else
      message = "There is no discount to apply."
    end
    message
  end #end of apply_discount Instance Method

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price * @quantity
    @quantity.times {@cart.pop}
  end
=======
  end

  def add_item(item, price, quantity = 0)
    if quantity > 0
      @total += price * quantity
    else
      @total += price
    end
  end

  def apply_discount
    if @discount > 0
      @total -= (@discount/100.to_f)*@total
    end
    
  end

>>>>>>> 4d1a9996e6f52eeface9e75e9cb388ec11440186
end #end of Class Cash Register
