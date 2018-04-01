require 'test_helper'

class MainIntegrationTest < Capybara::Rails::TestCase
  test "Can shorten url via webpage" do
    visit root_url
    fill_in "Url", with: "https://github.com/faissaloo"
    click_on "Shorten"
    assert_text :visible, /\/[A-Za-z0-9\$\-\_]+/
  end
  
  test "Invalid URLs cannot be shortened" do 
    visit root_url
    fill_in "Url", with: '""'
    click_on "Shorten"
    assert_text :visible, "Bad request"
  end
end
