require 'rails_helper'

feature "Add a words to a piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Draft words" do
    visit edit_admin_pieces_path

    expect(page).to have_text("Words were successfully drafted.")
  end
end
