require 'cucumber/rails'
require "capybara"
require "capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'
require "capybara/rspec"
# require "capybara/accessible"
require "selenium-webdriver"
require 'capybara-webkit'
require 'capybara/dsl'


# Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
Capybara.default_wait_time = 5
# config.action_dispatch.show_exceptions = true
# Capybara.default_selector = :css

# ActionController::Base.asset_host = "http://www.google.com"
# ActionController::Base.allow_rescue = false
Capybara.app_host = 'http://www.google.com'
Capybara.always_include_port = false