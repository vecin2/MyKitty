class PaymentBuilder

  def initialize
    @payment = Payment.new
  end

  def set_amount (amount)
    @payment.amount= amount
    return self
  end

  def set_payer (payer)
    @payment.payer = payer
    return self
  end

  def set_member_involved(member)
    @payment.included_member = member
    return self
  end

  def build()
    return @payment
  end
end
