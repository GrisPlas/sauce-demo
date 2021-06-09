
Given('the {string} site url to open') do |site_url|
    begin
        puts "**************************************".yellow
        puts "STEP: Opening browser".yellow
        puts "**************************************".yellow
        
        url = $autodata.url("sites.#{site_url}")
        Capybara.visit(url)
        Capybara.page.current_window.maximize
    rescue Exception => e
       puts e.message.red 
       fail!(raise(ArgumentError.new(e.message)))
    end
end

Then("user logsIn with {string} credentials") do |credentials|
    begin
        puts "**************************************".yellow
        puts "STEP: User is logIn".yellow
        puts "**************************************".yellow
        login = LoginActions.new
        result = login.sign_in(credentials)
        #Assertion
        expect(result).to be true
    rescue Exception => e 
        puts e.message.red 
        fail!(raise(ArgumentError.new(e.message)))
    end
end