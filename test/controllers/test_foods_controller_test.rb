require "test_helper"

class TestFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_foods_index_url
    assert_response :success
  end

  test "should get create" do
    get test_foods_create_url
    assert_response :success
  end

  test "should get new" do
    get test_foods_new_url
    assert_response :success
  end

  test "should get destroy" do
    get test_foods_destroy_url
    assert_response :success
  end
end
