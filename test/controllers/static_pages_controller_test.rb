require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_name = "Ruby on Rails Tutorial Sample App"
  end

  test 'should get root' do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{ @base_name }"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{ @base_name }"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{ @base_name }"
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{ @base_name }"
  end

  test 'should get contact' do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{ @base_name }"
  end

end