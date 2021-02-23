require "application_system_test_case"

class TestTablesTest < ApplicationSystemTestCase
  setup do
    @test_table = test_tables(:one)
  end

  test "visiting the index" do
    visit test_tables_url
    assert_selector "h1", text: "Test Tables"
  end

  test "creating a Test table" do
    visit test_tables_url
    click_on "New Test Table"

    click_on "Create Test table"

    assert_text "Test table was successfully created"
    click_on "Back"
  end

  test "updating a Test table" do
    visit test_tables_url
    click_on "Edit", match: :first

    click_on "Update Test table"

    assert_text "Test table was successfully updated"
    click_on "Back"
  end

  test "destroying a Test table" do
    visit test_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test table was successfully destroyed"
  end
end
