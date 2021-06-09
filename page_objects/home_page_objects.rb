class HomePageObjects < SitePrism::Page
    element :lbl_products, :xpath, "//span[contains(text(), 'Products')]"
    element :select_filter, :xpath, "//select[@class='product_sort_container']"
    element :lbl_cart, :xpath, "//a[@class='shopping_cart_link']"
    element :btn_menu, :xpath, "//button[@id='react-burger-menu-btn']"
    element :btn_logout, :xpath, "//a[@id='logout_sidebar_link']"
end