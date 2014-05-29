Cucumber-Capybara_Webkit Integration
=========

capybara-webkit - Headless Webkit driver for Capybara


To Run tests in Terminal

    $ xvfb-run bundle exec cucumber features/googlesearch.feature



How to Use
------------

Install capybara-webkit

    $ sudo apt-get install xvfb
    $ sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
    $ sudo gem install capybara-webkit

**Note|** Qt is mandatory for installing capybara-webkit


Add capybara-webkit in your Gemfile

    $ gem "capybara-webkit"


Set the Capybara Javascript driver to webkit in env.rb

    Capybara.javascript_driver = :webkit
