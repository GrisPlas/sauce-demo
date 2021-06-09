class LoginPageObjects < SitePrism::Page
   element :input_username, :xpath, "//input[@id='user-name']"
   element :input_pwd, :xpath, "//input[@id='password']"
   element :btn_login,  "#login-button"
   element :lbl_error, :xpath, "//h3[@data-test='error']"
end