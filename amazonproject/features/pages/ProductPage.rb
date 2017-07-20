require 'rubygems'
require 'selenium-cucumber'
require 'selenium-webdriver'

class ProductPage	

	def openProductPage
		$driver.get ("https://www.amazon.com/gp/product/B00V5IM5PY/ref=ox_sc_sfl_title_1?ie=UTF8&psc=1&smid=ATVPDKIKX0DER")
		@title = $driver.find_element(:id, "productTitle").text
		if(@title == "AmazonBasics Digital Kitchen Scale with LCD Display (Batteries Included)")
			puts "Product page opened"
		end
	end
end