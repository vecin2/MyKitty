class Output
  def messages
    @messages||=[]
  end
  def puts(message)
    messages<<message
  end
end

def output_instance
  @output ||= Output.new
  return @output
end
Given(/^I haven't yet start the app$/) do
end

When(/^I start the app$/) do
  myKitty = Mykitty::Mykitty_app.new(output_instance)
  myKitty.start();
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(output_instance.messages).to include(arg1)
end


Given(/^There is no payment submitted yet$/) do
  myKitty = Mykitty::Mykitty_app.new(output_instance)
  myKitty.start();
end

When(/^I submit a payment by "([^"]*)" for "([^"]*)" of "([^"]*)" including "([^"]*)"$/) do |payer, payment_description, amount, member_included|

end

Then(/^I should see a payment by "([^"]*)" for "([^"]*)" of "([^"]*)" including "([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  pending # Write code here that turns the phrase above into concrete actions
end

