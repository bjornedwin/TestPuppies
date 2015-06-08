Feature: Adopting puppies

  Scenario Outline: Adopting a puppy
    Given I am on the puppy adoption site
    When I select "<puppy_name>"
    And add the puppy to the shopping cart
    And I proceed to the checkout
    And enter "<name>" in the name field
    And enter "<address>" in the address field
    And enter "<email>" in the email field
    And select "<pay_type>" from the pay type
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy"

  Examples:
| name   | address            | email              | pay_type       |puppy_name |
| Bjorn  | 123 Main           | chrys@example.com  | Credit card    |Brook      |
| Vlad   | 555 Easy Money     | Suresh@example.com | Purchase order |Hanna      |
| Adam   | 777 Capital One Dr | Ritesh@example.com | Check          |Maggie Mae |
