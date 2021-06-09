require 'selenium-webdriver'
require 'auto_data'
require 'capybara'
require 'colorize'
require 'capybara/cucumber'
require 'site_prism'
require 'ffaker'
require 'logger'
require 'rspec/expectations'
require 'test/unit/assertions'

#---------------------
#Logs CONFIG
#---------------------
$logs = Logger.new("logs.txt")

#---------------------
#Inheritance CONFIG
#---------------------
Dir[File.dirname(File.expand_path("../../",__FILE__)) + "/actions/*.rb"].each {|file| require file}
Dir[File.dirname(File.expand_path("../../",__FILE__)) + "/page_objects/*.rb"].each {|file| require file}

#---------------------
#AutoData CONFIG
#---------------------
ENV["AUTO_DATA_PATH"] =  File.absolute_path('../..', File.dirname(__FILE__)).to_s
$autodata = AutoData::Parse.new

#---------------------
#Browser CONFIG
#---------------------
Capybara.configure do |capybara|
    capybara.default_driver = :selenium_chrome
end

