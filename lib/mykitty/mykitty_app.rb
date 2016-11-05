module Mykitty
  class Mykitty_app
   def initialize(output)
     @output=output
   end 
    def start()
      
      @output.puts("Welcome to MyKitty!")
      @output.puts("Press P for inserting a payment")
    end
  end
end
