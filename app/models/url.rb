class Url < ApplicationRecord
  validates_presence_of :longurl
  
  @@domain = "st.uk"
  
  @@validChars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789$-_.+!*'(),,"
  @@validCharCount="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789$-_.+!*'(),,".length
  
  #Takes a URL, adds it to the database and returns the shortened URL
  def self.shortenUrl(inurl)
      @@domain+"/"+idToCode(where(longurl: inurl).first_or_create.id)
  end
  
  #Takes an id and creates a string corresponding to it
  def self.idToCode(id)
    code=""
    while id != 0 do
      code+=@@validChars[id%@@validCharCount]
      id/=@@validCharCount
    end
    code
  end
end
