require "test_helper"

class AcitveQuartersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get acitve_quarters_new_url
    assert_response :success
  end

  test "should get create" do
    get acitve_quarters_create_url
    assert_response :success
  end

  test "should get update" do
    get acitve_quarters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get acitve_quarters_destroy_url
    assert_response :success
  end
end
