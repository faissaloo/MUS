require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "correct id generation" do
    assert Url.idToCode(1) == "B"
    assert Url.idToCode(2776) == "ml"
    assert Url.idToCode(75375375197) == "X1Lv)h"
  end
  
  test "Duplicate urls are not generated" do
    assert Url.shortenUrl("www.fsf.org") == Url.shortenUrl("www.fsf.org")
  end
  
  test "Ensure codes can be translated back into Ids" do
    testid=746841600
    assert Url.codeToId(Url.idToCode(testid))==testid
  end
  
  test "Ensure ids can be translated back into codes" do
    testcode "EternalSeptember"
    assert Url.idToCode(Url.codeToId(testcode))==testcode
  end
end
