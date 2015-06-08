class HomePage
  include PageObject

  page_url 'http://puppies.herokuapp.com'

  divs(:name, :class => 'name')
  buttons(:view_detail, :value => 'View Details')

  def select_puppy(puppy_name)
    idx = name_elements.find_index { |div| div.text == puppy_name }
    view_detail_elements[idx].click
  end

end
