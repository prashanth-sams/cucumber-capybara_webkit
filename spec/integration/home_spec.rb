#!/usr/local/bin/ruby
require 'spec_helper'
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require "selenium-webdriver"
require 'capybara/rspec'
require 'capybara/rails'

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
      page.should have_content 'Prashanth Sams'
      # sleep 2
    end
  end
end

t = MyCapybaraTest::Test.new
t.test_google