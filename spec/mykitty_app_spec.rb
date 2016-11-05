require 'spec_helper.rb'

module Mykitty
  describe Mykitty_app do
    before(:each) do
      let(:output) { double('ouput').as_null_object }
      let(:mykitty_app) { Mykitty_app.new(output) }
    end
    describe "#start" do
          it "send a welcome message" do
            expect(output).to receive(:puts).with('Welcome to MyKitty!')

            mykitty_app.start
          end

          it "it allows to select new payment" do
            expect(output).to receive(:puts).with("Press P for inserting a payment");

            mykitty_app.start
          end
    end
    describe "#submit_payment" do
      it "submits payment and displays it" do
        expect(ouput).to receive(:puts).with("Payer | Description | Amount | Erin")
        expect(ouput).to receive(:puts).with("David | Ski Rental | 10 | Erin")
      end
    
    end
  end
end
