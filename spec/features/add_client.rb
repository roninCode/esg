require "rails_helper.rb"

RSpec.feature ' add a client' do 
  scenario " allows a user to sign up as a client" do
    visit "/clients/new"

    fill_in "name", with: "Real Client"
    fill_in "phone",
    fill_in "email",
    fill_in "password",
    fill_in "password_confirmation".

  end  
end