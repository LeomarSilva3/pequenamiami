require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'report_builder'
require 'allure-cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome#_headless
    config.default_max_wait_time = 20
    config.app_host = 'http://www.pequenamiami.com.br'
    
    
end