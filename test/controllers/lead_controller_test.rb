require 'test_helper'

class LeadControllerTest < ActionDispatch::IntegrationTest
  test "should get full_name_of_the_contact:string" do
    get lead_full_name_of_the_contact:string_url
    assert_response :success
  end

  test "should get company_name:string" do
    get lead_company_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get lead_email:string_url
    assert_response :success
  end

  test "should get phone:integer" do
    get lead_phone:integer_url
    assert_response :success
  end

  test "should get project_name:string" do
    get lead_project_name:string_url
    assert_response :success
  end

  test "should get Project_description:string" do
    get lead_Project_description:string_url
    assert_response :success
  end

  test "should get department_in_charge_of_the_elevators:string" do
    get lead_department_in_charge_of_the_elevators:string_url
    assert_response :success
  end

  test "should get message:string" do
    get lead_message:string_url
    assert_response :success
  end

  test "should get attached_file:binary" do
    get lead_attached_file:binary_url
    assert_response :success
  end

end
