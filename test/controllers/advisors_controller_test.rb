require 'test_helper'

class AdvisorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/advisors'
    assert_response :success
  end

  describe "the signin process", :type => :feature do
    before :each do
      User.make(email: 'user@example.com', password: 'password')
    end

  it "signs me in" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end

  test "should get show" do
    get advisors_show_url
    assert_response :success
  end

  test "should get update" do
    get advisors_update_url
    assert_response :success
  end

  test "should get create" do
    get advisors_create_url
    assert_response :success
  end

  test "should get new" do
    get advisors_new_url
    assert_response :success
  end

  test "should get destroy" do
    get advisors_destroy_url
    assert_response :success
  end

end
