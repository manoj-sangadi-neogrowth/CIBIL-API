require "test_helper"

class DemographicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demographic_index_url
    assert_response :success
  end

  test "should get show" do
    get demographic_show_url
    assert_response :success
  end

  test "should get create" do
    get demographic_create_url
    assert_response :success
  end
end
