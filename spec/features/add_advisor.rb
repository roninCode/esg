require "rails_helper.rb"

RSpec.feature ' add an advisor' do 
  scenario " allows a user to sign up as an advisor" do
    visit "/advisors/new"
    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "zip_code", with: "11206"
    fill_in "test_em", with: "d@do"
    fill_in "password_field", with: "jamie"
    fill_in "password_confirmation", with: "jamie"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Welcome to Ethi")
  end

  scenario " advisor shouldn't be created if missing name" do
    visit "/advisors/new"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "zip_code", with: "11206"
    fill_in "test_em", with: "d@do"
    fill_in "password_field", with: "jamie"
    fill_in "password_confirmation", with: "jamie"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Please fill out")
  end

  scenario " advisor shouldn't be created if missing email" do
    visit "/advisors/new"
    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "zip_code", with: "11206"
    fill_in "password_field", with: "jamie"
    fill_in "password_confirmation", with: "jamie"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Please fill out")
  end

  scenario " advisor shouldn't be created if missing zip code" do
    visit "/advisors/new"
    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "test_em", with: "d@do"
    fill_in "password_field", with: "jamie"
    fill_in "password_confirmation", with: "jamie"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Please fill out")
  end

  scenario " advisor shouldn't be created if missing password" do
    visit "/advisors/new"
    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "test_em", with: "d@do"
    fill_in "zip_code", with: "11206"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Please fill out")
  end

  scenario " advisor shouldn't be created if password and password_confirmation do not match" do
    visit "/advisors/new"
    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "zip_code", with: "11206"
    fill_in "test_em", with: "d@do"
    fill_in "password_field", with: "jamie"
    fill_in "password_confirmation", with: "notpass"
    click_on("Create an Advisor Account") 
    expect(page).to have_content("Please fill out")
  end
end