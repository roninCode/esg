require 'test_helper'

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questionnaires_new_url
    assert_response :success
  end

end
