require 'rubygems'
require 'selenium-cucumber'
require 'selenium-webdriver'

Given(/^I open the sign in page$/) do
  	$driver.get ("https://www.amazon.com/sign-in")
end

And(/^I open the product page$/) do
	productPage = ProductPage.new
	productPage.openProductPage
end

And(/^I login$/) do
	loginPage = LoginPage.new
	loginPage.login

end

When (/^I click to add to cart$/) do
	$driver.find_element(:id, "add-to-cart-button").click
end

Then(/^I can proceed to checkout$/) do
	@ptcButton = $driver.find_element(:id, "hlb-ptc-btn-native")
	@ptcButton.displayed?
end	

And(/^I click to proceed to checkout$/) do
	$driver.find_element(:id, "hlb-ptc-btn-native").click
end

Then(/^I click to confirm shipping address$/) do
	$wait.until { $driver.find_element(:xpath, "//a[contains(text(), 'Ship to this address')]").displayed? }
end