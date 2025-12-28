require "test_helper"

class BambooControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bamboo_new_url
    assert_response :success
  end

  test "should get create" do
    get bamboo_create_url
    assert_response :success
  end
end
