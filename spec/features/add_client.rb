require "rails_helper.rb"

RSpec.feature ' add a client' do 
  scenario " allows a user to sign up as a client" do
    visit "/clients/new"

    fill_in "name", with: "Real Client"
    fill_in "phone", with: "987654321"
    fill_in "test_client_em", with: "hello@hithere"
    fill_in "client_pass", with: "jamie"
    fill_in "client_pass_conf", with: "jamie"
    click_on("Create a Client Account")
    expect(page).to have_content("Welcome to Ethi")
  end  

  scenario " client shouldn't be created if missing name" do
    visit "/clients/new"
    fill_in "phone", with: "987654321"
    fill_in "test_client_em", with: "hello@hithere"
    fill_in "client_pass", with: "jamie"
    fill_in "client_pass_conf", with: "jamie"
    click_on("Create a Client Account")
    expect(page).to have_content("Please fill")
  end  
  scenario " client shouldn't be created if missing email" do
    visit "/clients/new"
    fill_in "name", with: "Real Client"
    fill_in "phone", with: "987654321"
    fill_in "client_pass", with: "jamie"
    fill_in "client_pass_conf", with: "jamie"
    click_on("Create a Client Account")
    expect(page).to have_content("Please fill")
  end 
  scenario " client shouldn't be created if missing password" do
    visit "/clients/new"
    fill_in "name", with: "Real Client"
    fill_in "phone", with: "987654321"
    fill_in "test_client_em", with: "hello@hithere"
    click_on("Create a Client Account")
    expect(page).to have_content("Please fill")
  end
  scenario " client shouldn't be created if password doesn't match password_confirmation" do
    visit "/clients/new"
    fill_in "name", with: "Real Client"
    fill_in "phone", with: "987654321"
    fill_in "test_client_em", with: "hello@hithere"
    fill_in "client_pass", with: "jamie"
    fill_in "client_pass_conf", with: "Notjamie"
    click_on("Create a Client Account")
    expect(page).to have_content("Please fill")
  end  
end

