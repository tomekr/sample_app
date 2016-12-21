require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_name = "Ruby on Rails Tutorial Sample App"
  end

  test 'should get root' do
    get root_url
    assert_response :success
    assert_select "title", full_title
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", full_title("Help")
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select "title", full_title("About")
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select "title", full_title("Contact")
  end

  test 'should get signup' do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | #{ @base_name }"
    assert_select "title", full_title("Sign up")
  end
end
