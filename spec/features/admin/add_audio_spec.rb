require 'rails_helper'

feature "Add a audio to a piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Upload audio" do
    visit edit_admin_pieces_path

    expect(page).to have_text("Audio was successfully uploaded.")
  end
end
