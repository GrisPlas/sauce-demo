class CheckoutActions

    def initialize   
        @checkout_o = CheckoutObjects.new
    end

    def doing_checkout
        fake_fname = FFaker::Name.first_name
        fake_lname = FFaker::Name.last_name
        fake_zip =  FFaker::AddressUS.zip_code

        home_page_o = HomePageObjects.new
        home_page_o.lbl_cart.click

        sleep 2

        @checkout_o.btn_checkout.click
        @checkout_o.input_first_name.set fake_fname
        @checkout_o.input_last_name.set fake_lname
        @checkout_o.input_zip.set fake_zip

        sleep 3

        @checkout_o.btn_continue.click
        @checkout_o.btn_finish.click

        sleep 1
        if @checkout_o.lbl_completed.visible? 
            $logs.info("The order was completed successfully")
            puts "The order was completed sucessfully".green
            return true
        else
            $logs.error("The order did not complete")
            return false
            raise "The order did not complete"
        end
    end

end