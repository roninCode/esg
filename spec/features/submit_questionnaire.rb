require "rails_helper.rb"

RSpec.feature ' client fills out a questionnaire' do
  scenario " proposal created when questionnaire is submitted" do
    visit "/questionnaires/new"
    # How to select a option value for a session dependent query?
    click_on("See your Risk")
    expect(page).to have_content("You have success")
  end
end



# RSpec.feature ' add an advisor' do 
#   scenario " allows a user to sign up as an advisor" do
#     visit "/advisors/new"
#     fill_in "name", with: "Devin Dutch"
#     fill_in "company", with: "Dimes and Dozens"
#     fill_in "phone", with: "123456789"
#     fill_in "zip_code", with: "11206"
#     fill_in "test_em", with: "d@do"
#     fill_in "password_field", with: "jamie"
#     fill_in "password_confirmation", with: "jamie"
#     click_on("Create an Advisor Account") 
#     expect(page).to have_content("Welcome to Ethi")
#   end