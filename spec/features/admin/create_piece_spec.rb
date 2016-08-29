require 'rails_helper'

feature "Create a new piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Click new" do
    visit admin_pieces_path
    click_on "New"

    expect(page).to have_text("Editing piece")
  end
end
