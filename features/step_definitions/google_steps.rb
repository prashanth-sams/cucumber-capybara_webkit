Given(/^I am on the Google home page$/) do
  visit "/"  
  # browser = Capybara.current_session.driver.browser
  # browser.manage.delete_all_cookies
end

# Then /^Capybara should use the "(.*?)" driver$/ do |driver|
#   expect(Capybara.current_driver).to eq(driver.to_sym)
# end

When /^I enter "([^"]*)" with "([^"]*)"$/ do |element, text|  
  fill_in element, with: text    
end

And /^I press "(.*?)"$/ do |selector|  
  # page.find(element).click
  find(selector).native.send_keys(:return)
end

Then(/^I should see "(.*?)"$/) do |text|

  expect(page).to have_content text
  # expect(page).to have_content 'Prashanth Sams'
  # expect(page).to have_content("Prashanth Sams") 
end