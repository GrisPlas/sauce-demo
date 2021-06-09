# sauce-demo
Automation testing funcionalities for learning purposes through SauceDemo site
  
[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)

## Setup environment
1. To install Ruby (Ruby version installed => 2.7.3)
2. To install gems use below command: gem install *gem_name*. The gems required are listed into Gemfile.
3. To install chromedriver.exe

## How to execute the scripts
Using windows console.
 1. You have to go into *SauceDemo* folder and execute *cucumber features\script.feature* command
 
## About the scripts
### Scenarios to be validated:
    1. Login with a valid user
    2. Login with an invalid user
    3. Logout from the home page
    4. Sort products by Price (low to high)
    5. Add multiple items to the shopping cart
    6. Add the specific product ‘Sauce Labs Onesie’ to the shopping cart
    7. Complete a purchase

Into *features* folder you will find two files.
1. login_invalid_user.feature: This script is covering 2 scenario.
2. user_navigation.feature: This script is covering 1, 3, 4, 5, 6 and 7 scenarios.
