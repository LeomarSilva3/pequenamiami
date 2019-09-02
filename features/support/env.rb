require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'report_builder'
require 'allure-cucumber'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

Capybara.configure do |config|
    config.default_driver = :selenium_chrome#_headless
    config.default_max_wait_time = 20
    config.app_host = CONFIG["url"]
    
    
end