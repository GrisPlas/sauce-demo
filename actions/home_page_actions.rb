class HomePageActions

    def initialize  
        @home_page_o = HomePageObjects.new  
        @checkout_o = CheckoutObjects.new
        @login_page_o = LoginPageObjects.new  
    end

    def product_filter(filter)
        @home_page_o.select_filter.click

        case filter.downcase
        when "price (low to high)"
            Capybara.find(:xpath, "//option[contains(text(), '#{filter}')]").click
            sleep 3
            begin
                index = 1
                lowest = 0.0
                while Capybara.find(:xpath, "(//div[@class='inventory_item_price'])[#{index}]")
                    price = Capybara.find(:xpath, "(//div[@class='inventory_item_price'])[#{index}]").text.split('$')[1]
                    if price.to_f >= lowest
                        lowest = price.to_f
                        filtering = true
                    end#end if
                    index+=1
                end #end while
            rescue                
                if filtering
                    $logs.info("The filter was applied correctly")
                    return true
                    puts "The filter was applied correctly".green
                else
                    $logs.error("Filter is not ordering products as expected")
                    return false
                    raise "Filter is not ordering products as expected".red
                end#end if
            end
                
        when "name (a to z)"
            puts "Filter not supported yet"
            $logs.error("Filter not supported yet")
            return false
        when "name (z to a)"
            puts "Filter not supported yet"
            $logs.error("Filter not supported yet")
            return false
        when "price(high to low)"
            puts "Filter not supported yet"
            $logs.error("Filter not supported yet")
            return false
        else 
            $logs.error("Filter not valid")
            return false
            raise puts "Filter not valid".red
        end#end case
    end#end def

    def add_to_cart(item)
        Capybara.find(:xpath, "//div/div/div/a/div[contains(text(),'#{item}')]/../../../div/button").click
        sleep 2
        @home_page_o.lbl_cart.click

        #Checking item into cart
        begin
            if Capybara.find(:xpath, "//div[contains(text(),'#{item}')]")
                puts "Item was added correctly".green
                $logs.info("Item #{item} was added correctly")
                @checkout_o.btn_continue_shopping.click
                return true
            end
        rescue 
            $logs.error("Item #{item} was not added as expected")
            return false
             raise "Item #{item} was not added as expected".red                 
        end
        
    end#end def

    def log_out
        @home_page_o.btn_menu.click
        @home_page_o.btn_logout.click

        if @login_page_o.btn_login.visible? 
            $logs.info("The user logged out successfully")
            puts "The user logged out successfuly".green
            return true
        else
            $logs.error("The user did not logout")
            return false
            raise "The user did not logout"
        end
    end
end#end class