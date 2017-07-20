Feature: Order a product
	As a user I want to order a product

Scenario: As a user I want to add a product to the cart
  	Given I open the product page
  	When I click to add to cart
 	Then I can proceed to checkout
 	
Scenario: As a logged out user I want to order a product
  	Given I open the product page
	When I click to add to cart
 	And I click to proceed to checkout
	And I login
	Then I click to confirm shipping address

  Scenario: As a logged in user I want to order a product
  	Given I open the sign in page
  	And I login
  	And I open the product page
  	When I click to add to cart
 	And I click to proceed to checkout
	Then I click to confirm shipping address
