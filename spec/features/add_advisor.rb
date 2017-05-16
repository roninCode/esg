require "rails_helper.rb"
Rspec.feature ' add an advisor' do 
  scenario " allows a user to sign up as an advisor" do
    visit "/advisors/new"

    fill_in "name", with: "Random Person"

    click_on("submit") 

    expect(page).to have_content("Random Person")
  end

  
end