require 'rails_helper'

feature "Add words to a piece", :type => :feature do
  before do
    sign_in_as_a_valid_user 
  end

  scenario "Upload words" do
    piece = FactoryGirl.create(:piece)
    visit edit_admin_piece_path(piece)
    first('input#word_paragraph_trix_input_word', visible: false).set(Faker::Lorem::paragraph)
    click_on 'Create Word'
    expect(page).to have_text("Words were successfully created.")
  end
end
