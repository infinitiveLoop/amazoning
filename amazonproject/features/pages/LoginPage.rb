require 'rubygems'
require 'selenium-cucumber'
require 'selenium-webdriver'

class LoginPage	

	def login
		$wait.until { $driver.find_element(:id, "signInSubmit").displayed? }
		@email = $driver.find_element(:id, "ap_email")
		@email.clear
		@email.send_keys "nekiemejl2@gmail.com"
		@pass = $driver.find_element(:id, "ap_password")
		@pass.send_keys("123456")
		$driver.find_element(:id, "signInSubmit").click
	end
end