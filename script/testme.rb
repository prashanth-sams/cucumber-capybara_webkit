#!/usr/local/bin/ruby
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require "selenium-webdriver"

Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.com'
Capybara.default_wait_time = 15

module MyCapybaraTest
  class Test
    include Capybara::DSL
    def test_google
      visit('/')
      fill_in "q", :with => "Prashanth Sams"
      sleep 2
      find("#gbqfbw button").click
      sleep 2
      # page.should have_content 'Prashanth Sams'
      # sleep 2
    end
  end
end

t = MyCapybaraTest::Test.new
t.test_google