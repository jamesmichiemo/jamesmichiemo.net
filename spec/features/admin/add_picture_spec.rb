require 'rails_helper'

feature "Add a picture to a piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Upload pic" do
    piece = FactoryGirl.create(:piece)
    visit edit_admin_piece_path(piece)
    first('input#picture_caption_trix_input_picture', visible: false).set('telekinesis')
    click_on 'Create Picture'
    expect(page).to have_text("Picture was successfully created.")
  end
end
