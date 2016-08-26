require 'rails_helper'

feature "Signing In", :type => :feature do
  before do
    @user ||= FactoryGirl.create :user
  end

  scenario "Type the password " do
    visit new_admin_session_path
    fill_in "email", with: @user.email
    fill_in "password", with: @user.password 
    click_button "Submit"

    expect(page).to have_text("Share something")
  end
end
