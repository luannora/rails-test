require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Email", with: @customer.email
    fill_in "Followable", with: @customer.followable
    fill_in "Is 2fa", with: @customer.is_2fa
    fill_in "Language", with: @customer.language_id
    fill_in "Nome", with: @customer.nome
    fill_in "Password", with: @customer.password
    fill_in "Salt", with: @customer.salt
    fill_in "Status", with: @customer.status_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @customer.email
    fill_in "Followable", with: @customer.followable
    fill_in "Is 2fa", with: @customer.is_2fa
    fill_in "Language", with: @customer.language_id
    fill_in "Nome", with: @customer.nome
    fill_in "Password", with: @customer.password
    fill_in "Salt", with: @customer.salt
    fill_in "Status", with: @customer.status_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
