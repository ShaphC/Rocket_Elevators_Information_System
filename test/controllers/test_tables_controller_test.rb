require 'test_helper'

class TestTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_table = test_tables(:one)
  end

  test "should get index" do
    get test_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_test_table_url
    assert_response :success
  end

  test "should create test_table" do
    assert_difference('TestTable.count') do
      post test_tables_url, params: { test_table: {  } }
    end

    assert_redirected_to test_table_url(TestTable.last)
  end

  test "should show test_table" do
    get test_table_url(@test_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_table_url(@test_table)
    assert_response :success
  end

  test "should update test_table" do
    patch test_table_url(@test_table), params: { test_table: {  } }
    assert_redirected_to test_table_url(@test_table)
  end

  test "should destroy test_table" do
    assert_difference('TestTable.count', -1) do
      delete test_table_url(@test_table)
    end

    assert_redirected_to test_tables_url
  end
end
