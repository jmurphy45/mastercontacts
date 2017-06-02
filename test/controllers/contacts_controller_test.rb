require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { birth_date: @contact.birth_date, business_phone: @contact.business_phone, city: @contact.city, company: @contact.company, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, mobile: @contact.mobile, primary_class: @contact.primary_class, state: @contact.state, street1: @contact.street1, street2: @contact.street2 } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { birth_date: @contact.birth_date, business_phone: @contact.business_phone, city: @contact.city, company: @contact.company, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, mobile: @contact.mobile, primary_class: @contact.primary_class, state: @contact.state, street1: @contact.street1, street2: @contact.street2 } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
