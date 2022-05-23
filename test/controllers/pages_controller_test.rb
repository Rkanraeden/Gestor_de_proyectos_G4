require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pages_create_url
    assert_response :success
  end

  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get board" do
    get pages_board_url
    assert_response :success
  end
end
