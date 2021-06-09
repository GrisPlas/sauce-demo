class CheckoutObjects < SitePrism::Page
    element :btn_continue_shopping, :xpath, "//button[@id='continue-shopping']"
    element :btn_checkout, :xpath, "//button[@id='checkout']"
    element :input_first_name, :xpath, "//input[@name='firstName']"
    element :input_last_name, :xpath, "//input[@name='lastName']"
    element :input_zip, :xpath, "//input[@name='postalCode']"
    element :btn_continue, :xpath, "//input[@id='continue']"
    element :btn_finish, :xpath, "//button[@id='finish']"
    element :lbl_completed, :xpath, "//h2[@class='complete-header']"
end

