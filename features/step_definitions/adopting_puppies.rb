
Given(/^I am on the puppy adoption site$/) do
  visit HomePage
end

When(/^I select "(.+)"$/) do |puppy_name|
  on(HomePage).select_puppy puppy_name
end

When(/^add the puppy to the shopping cart$/) do
  on(DetailsPage).add_to_cart
end

When(/^I proceed to the checkout$/) do
  on(ShoppingCartPage).proceed_to_checkout
end

When(/^enter "([^"]*)" in the name field$/) do |name|
  on(CheckoutPage).name = name
end

When(/^enter "([^"]*)" in the email field$/) do |email|
  on(CheckoutPage).email = email
end

When(/^enter "([^"]*)" in the address field$/) do |address|
  on(CheckoutPage).address = address
end

When(/^select "([^"]*)" from the pay type$/) do |pay_type|
  on(CheckoutPage).pay_type = pay_type
end

When(/^I click the Place Order button$/) do
  on(CheckoutPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  @current_page.text.should include expected_message
end

