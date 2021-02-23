require "application_system_test_case"

class ModelsTest < ApplicationSystemTestCase
  setup do
    @model = models(:one)
  end

  test "visiting the index" do
    visit models_url
    assert_selector "h1", text: "Models"
  end

  test "creating a Model" do
    visit models_url
    click_on "New Model"

    fill_in "Address", with: @model.address
    fill_in "City", with: @model.city
    fill_in "Country", with: @model.country
    fill_in "Entity", with: @model.entity
    fill_in "Notes", with: @model.notes
    fill_in "Number and street", with: @model.number_and_street
    fill_in "Postal code", with: @model.postal_code
    fill_in "Status", with: @model.status
    fill_in "Suite or apartment", with: @model.suite_or_apartment
    fill_in "Type of address", with: @model.type_of_address
    click_on "Create Model"

    assert_text "Model was successfully created"
    click_on "Back"
  end

  test "updating a Model" do
    visit models_url
    click_on "Edit", match: :first

    fill_in "Address", with: @model.address
    fill_in "City", with: @model.city
    fill_in "Country", with: @model.country
    fill_in "Entity", with: @model.entity
    fill_in "Notes", with: @model.notes
    fill_in "Number and street", with: @model.number_and_street
    fill_in "Postal code", with: @model.postal_code
    fill_in "Status", with: @model.status
    fill_in "Suite or apartment", with: @model.suite_or_apartment
    fill_in "Type of address", with: @model.type_of_address
    click_on "Update Model"

    assert_text "Model was successfully updated"
    click_on "Back"
  end

  test "destroying a Model" do
    visit models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Model was successfully destroyed"
  end
end
