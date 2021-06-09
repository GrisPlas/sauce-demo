Then("user sorts products by {string}") do |filter|
    begin
        puts "**************************************".yellow
        puts "STEP: Sorting products".yellow
        puts "**************************************".yellow
        
        home_page = HomePageActions.new
        result = home_page.product_filter(filter)
        #Assertion
        expect(result).to be true
    rescue Exception => e
       puts e.message.red 
       fail!(raise(ArgumentError.new(e.message)))
    end
end


And("user adds {string} item to the shopping cart") do |item|
    begin
        puts "**************************************".yellow
        puts "STEP: Adding #{item} item to cart".yellow
        puts "**************************************".yellow
        home_page = HomePageActions.new
        result = home_page.add_to_cart(item)
        #Assertion
        expect(result).to be true
    rescue Exception => e
       puts e.message.red 
       fail!(raise(ArgumentError.new(e.message)))
    end
end

And("user logs out")  do
    begin
        puts "**************************************".yellow
        puts "STEP: Logging out".yellow
        puts "**************************************".yellow
        home_page = HomePageActions.new
        result = home_page.log_out
        #Assertion
        expect(result).to be true
    rescue Exception => e
       puts e.message.red 
       fail!(raise(ArgumentError.new(e.message)))
    end
end