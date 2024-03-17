require "test_helper"

class PostimegsesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postimegses_new_url
    assert_response :success
  end

  test "should get index" do
    get postimegses_index_url
    assert_response :success
  end

  test "should get show" do
    get postimegses_show_url
    assert_response :success
  end
end
