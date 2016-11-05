require 'set'

class Kitty
  attr_accessor :name
  attr_accessor :payments
  def initialize(name)
    @name = name
    @payments = Set.new
    @balance = Hash.new
  end

  def total_spend
    total_spend=0

    @payments.each do|payment| 
      total_spend+=payment.amount
    end

    return total_spend
  end

  def add_payment(payment)
    @payments.add(payment)
  end

  def compute_balance
    @payments.each do |payment|
      count_payment(payment.payer, payment.amount)
      count_payment(payment.included_member, -payment.amount)
    end
    return @balance
  end
  def count_payment(member, amount)
    if(@balance[member] == nil)
      @balance[member] =0
    end
    @balance[member]+= amount
  end

end
