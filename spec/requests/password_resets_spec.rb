require 'rails_helper'
require 'spec_helper'
RSpec.describe "PasswordResets", type: :request do
  it 'emails user when requesting password reset' do
    user = FactoryGirl(:user)
    visit login_path
    click_link "password"
    fill_in "Email", :with => user.email
    click_button "Reset Password"
    page.should have_content("Email Sent")
  end
end
