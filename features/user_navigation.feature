#Created by Gris Plascencia
Feature: User navigates through saucedemo site

Scenario:
     Given the "saucedemo" site url to open
     Then user logsIn with "regular" credentials
     Then user sorts products by "Price (low to high)"
     And user adds "Sauce Labs Bolt T-Shirt" item to the shopping cart
     And user adds "Sauce Labs Bike Light" item to the shopping cart
     And user adds "Sauce Labs Backpack" item to the shopping cart
     Then user starts checkout
     And user logs out

     
     