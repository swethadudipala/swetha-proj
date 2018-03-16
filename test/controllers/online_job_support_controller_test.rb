require 'test_helper'

class OnlineJobSupportControllerTest < ActionDispatch::IntegrationTest
  test "should get ROR_Job_support" do
    get online_job_support_ROR_Job_support_url
    assert_response :success
  end

  test "should get Ruby_cucumber_Job_Support" do
    get online_job_support_Ruby_cucumber_Job_Support_url
    assert_response :success
  end

end
