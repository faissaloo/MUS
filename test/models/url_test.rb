require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "Duplicate urls are not generated" do
    assert Url.shortenUrl("www.fsf.org") == Url.shortenUrl("www.fsf.org")
  end
  
  test "Ensure codes can be translated back into Ids" do
    testid = 746841600
    assert Url.codeToId(Url.idToCode(testid))==testid
  end
  
  test "Ensure ids can be translated back into codes" do
    testcode = "EternalSeptember"
    assert Url.idToCode(Url.codeToId(testcode))==testcode
  end
end
