require "rails_helper.rb"

RSpec.feature ' add an advisor' do 
  scenario " allows a user to sign up as an advisor" do
    visit "/advisors/new"

    fill_in "name", with: "Devin Dutch"
    fill_in "company", with: "Dimes and Dozens"
    fill_in "phone", with: "123456789"
    fill_in "zip_code", with: "11206"
    fill_in "email", with: "d@d", :match => :first
    # fill_in "email", with: "d@d"
    # attach_file("logo", '/public/salad.jpg')
    # page.all(:fillable_field, 'password').first.set('jamie')
    # page.all(:fillable_field, 'password')[1].set('jamie')
    page.all("password")
    fill_in "password", with: "jamie"
    fill_in "password_confirmation", with: "jamie"
    click_on("submit") 

    expect(page).to have_content("Here are your Clients")
  end
end
