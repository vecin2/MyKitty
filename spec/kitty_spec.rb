require './app/models/kitty'
require 'set'
describe Kitty do 
  before(:each) do
	@kitty = Kitty.new ('France Trip');
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
		expected_payments = Set.new([10,20])
		@kitty.add_payment(10)
		@kitty.add_payment(20)
		  
		expect(@kitty.payments).to eql(expected_payments)
		expect(@kitty.total_spend).to eql(30)
      end
    end
  end
end
