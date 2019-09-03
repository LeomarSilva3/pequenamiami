require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'report_builder'
require 'allure-cucumber'

#configuração de ambientes
CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

#configuração para execução de browsers
case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
begin
    puts "Invalid Browser"
end        

Capybara.configure do |config|
    config.default_driver = @driver#:selenium_chrome#_headless
    config.default_max_wait_time = 20
    config.app_host = CONFIG["url"]
    
    
end