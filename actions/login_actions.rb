
class LoginActions

    def initialize
        @login_object = LoginPageObjects.new  
        @home_page_o = HomePageObjects.new  
    end        

    def sign_in(credentials)
     @login_object.input_username.set $autodata.users("#{credentials}.user")
     @login_object.input_pwd.set $autodata.users("#{credentials}.pwd")
     @login_object.btn_login.click
     sleep 3
     
     case credentials
     when "invalid"
        if @login_object.lbl_error.text.include? "sadface"
            puts "Invalid credentials are working as expected".green
            $logs.info("Invalid credentials are working as expected")
            return true
        else
            $logs.error("Invalid credentials are not working as expected")
            return false
            raise puts "Invalid credentials are not working as expected".red
        end
     when "regular"
        if @home_page_o.lbl_products
            puts "User logged in as expected".green 
            $logs.info("User logged in as expected")
            return true
        else
            $logs.error("Regular credentials are not working as expected")
            return false
            raise "Regular credentials are not working as expected".red
        end
     else 
        $logs.error("ERROR: User's type not supported")
        raise "ERROR: User's type not supported".red
     end
    end
end 