Then("user starts checkout") do
    begin
        puts "**************************************".yellow
        puts "STEP: Starting checkout".yellow
        puts "**************************************".yellow
        checkout = CheckoutActions.new
        result = checkout.doing_checkout
        #Assertion
        expect(result).to be true
    rescue Exception => e
       puts e.message.red 
       fail!(raise(ArgumentError.new(e.message)))
    end
end