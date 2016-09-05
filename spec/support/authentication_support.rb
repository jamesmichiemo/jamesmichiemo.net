module ValidUserRequestHelper
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    visit new_admin_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Submit'
  end
end

RSpec.configure do |config|
  config.include ValidUserRequestHelper, :type => :feature
end
