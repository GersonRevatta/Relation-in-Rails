require 'test_helper'

class ThemeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get theme_new_url
    assert_response :success
  end

  test "should get edit" do
    get theme_edit_url
    assert_response :success
  end

  test "should get show" do
    get theme_show_url
    assert_response :success
  end

end
