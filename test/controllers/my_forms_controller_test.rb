require 'test_helper'

class MyFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_form = my_forms(:one)
  end

  test "should get index" do
    get my_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_my_form_url
    assert_response :success
  end

  test "should create my_form" do
    assert_difference('MyForm.count') do
      post my_forms_url, params: { my_form: { address: @my_form.address, category: @my_form.category, date: @my_form.date, gender: @my_form.gender, name: @my_form.name, subjects: @my_form.subjects } }
    end

    assert_redirected_to my_form_url(MyForm.last)
  end

  test "should show my_form" do
    get my_form_url(@my_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_form_url(@my_form)
    assert_response :success
  end

  test "should update my_form" do
    patch my_form_url(@my_form), params: { my_form: { address: @my_form.address, category: @my_form.category, date: @my_form.date, gender: @my_form.gender, name: @my_form.name, subjects: @my_form.subjects } }
    assert_redirected_to my_form_url(@my_form)
  end

  test "should destroy my_form" do
    assert_difference('MyForm.count', -1) do
      delete my_form_url(@my_form)
    end

    assert_redirected_to my_forms_url
  end
end
