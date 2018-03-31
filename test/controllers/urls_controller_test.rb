require 'test_helper'

class UrlsControllerTest < Capybara::Rails::TestCase
  test "Can shorten url via webpage" do
    visit root_url
    fill_in "Url", with: "https://github.com/faissaloo"
    click_on "Shorten"
    assert_text :visible, /st.uk\/[A-Za-z0-9\$\-\_]+/
  end
  
  test "Can shorten url via POST" do
    post shorten_url, params: {url: "2ton.com.au"}
    assert_response :success
  end
  
  test "Redirects to real page" do
    testAddr = "www.lainchan.org"
    visit Url.shortenUrl(testAddr).sub("st.uk","")
    assert_redirected_to(testAddr)
  end
end
