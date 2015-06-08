class ShoppingCartPage
  include PageObject


  button(:proceed_to_checkout, :value => 'Complete the Adoption')
  button(:continue_shopping, :value => 'Adopt Another Puppy')
  td(:cart_total, :class => 'total_cell')
  table(:cart, :index => 0)


end