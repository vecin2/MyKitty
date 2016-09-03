require 'set'

class Kitty
  attr_accessor :name
  attr_accessor :payments
  def initialize(name)
    @name = name
    @payments = Set.new
  end
  
  def total_spend
	total_spend=0

	@payments.each do|payment| 
		total_spend+=payment	
	end

	return total_spend
  end
   
  def add_payment(amount)
	@payments.add(amount)
  end
  
end
