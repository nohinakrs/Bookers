require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get bookers" do
    get homes_bookers_url
    assert_response :success
  end
end
