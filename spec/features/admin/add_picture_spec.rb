require 'rails_helper'

feature "Add a picture to a piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Upload pic" do
    piece = FactoryGirl.create(:piece)
    visit edit_admin_piece_path(piece)
    save_and_open_page
    fill_in 'picture_caption', with: 'it works!'
    click_on 'Create Picture'
    expect(page).to have_text("Picture was successfully created.")
  end
end
