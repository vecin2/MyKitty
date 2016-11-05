class Payment 
  attr_accessor :amount
  attr_accessor :payer
  attr_accessor :included_member

  def initialize
  end
  def eql?(o)
    return @amount = o.amount
  end
  def hash
    return @amount
  end
  def to_s
    amount
  end
end
