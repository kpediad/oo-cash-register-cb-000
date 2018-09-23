require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction_amount, :items, :discount

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * ((100.0 - self.discount) / 100.0)
      total = self.total
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

end
