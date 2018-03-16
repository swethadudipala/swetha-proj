require 'test_helper'

class OnlineTrainingControllerTest < ActionDispatch::IntegrationTest
  test "should get RubyOnRails" do
    get online_training_RubyOnRails_url
    assert_response :success
  end

  test "should get ruby_cucumber" do
    get online_training_ruby_cucumber_url
    assert_response :success
  end

  test "should get Python" do
    get online_training_Python_url
    assert_response :success
  end

  test "should get html_css_js" do
    get online_training_html_css_js_url
    assert_response :success
  end

end
