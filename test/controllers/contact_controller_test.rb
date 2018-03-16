require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get Phone_No" do
    get contact_Phone_No_url
    assert_response :success
  end

end
