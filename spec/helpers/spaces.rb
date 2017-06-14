module SpaceHelpers

  def enter_generic_details
    fill_in('description', with: 'Lovely little studio to swing a cat')
    fill_in('rate', with: 90)
    fill_in('max_capacity', with: 3)
    fill_in('available_from_date', with: '01/07/2017')
    fill_in('available_to_date', with: '03/07/2017')
    click_button('List my Space')
    expect(current_path).to eq('/spaces')
  end
end