require_relative '../app/models/kitty'
require_relative '../app/models/payment'
require_relative '../app/models/payment_builder'
require 'set'
describe Kitty do 
  before(:each) do
    @kitty = Kitty.new ('france trip');
  end	
  describe ".initialize" do
    context "given a new kitty" do
      it "total amount of money spend is 0" do
        expect(@kitty.total_spend).to eql(0)
      end
    end
  end

  describe ".add_payment" do
    context "given a new kitty" do
      it "adding payments adds to the kitty's total amount" do
        @kitty.add_payment(buildpayment(10, 'David', 'Erin'))
        @kitty.add_payment(buildpayment(20, 'David','Erin'))
        expect(@kitty.total_spend).to eql(30)
      end
    end
  end

  describe ".compute_balances" do
    context "given a kitty after one member has payed for another member" do
      it "computes the balances for both members" do
        expected_balances = Hash['David'=>10,'Erin'=>-10]
        @kitty.add_payment(buildpayment(10, 'David', 'Erin'))

        balances = @kitty.compute_balance()

        expect(balances).to eql(expected_balances)
      end
    end
  end

  describe ".compute_balances" do
    context "given a kitty after one member has payed for anoter member multiple times" do
      it "adds both times to compute the balances for both memebers" do
        expected_balances = Hash['David'=> 30, 'Erin'=> -30]
        @kitty.add_payment(buildpayment(10, 'David', 'Erin'))
        @kitty.add_payment(buildpayment(20, 'David', 'Erin'))
        balances = @kitty.compute_balance() 

        expect(balances).to eql(expected_balances)
      end
    end
  end

  def buildpayment(amount, payer, member_involved)
    return PaymentBuilder.new().set_amount(amount).
      set_payer(payer).
      set_member_involved(member_involved).
      build()
  end
end
