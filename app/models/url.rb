class Url < ApplicationRecord
  validates_presence_of :longurl
  
  @@validChars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
  
  #Takes a URL, adds it to the database and returns the shortened URL
  def self.shortenUrl(inurl)
      "/"+idToCode(where(longurl: inurl).first_or_create.id)
  end
  
  #Takes an id and creates a string corresponding to it
  def self.idToCode(id)
    code=""
    while id != 0 do
      code+=@@validChars[id%@@validChars.length]
      id/=@@validChars.length
    end
    code
  end
  
  def self.codeToId(code)
    id=0
    code.reverse.each_char do |i|
      id*=@@validChars.length
      id+=@@validChars.index(i)
    end
    return id
  end
  
  def self.getUrl(code)
    redirectTo=where(id: codeToId(code)).first
    if redirectTo
      redirectTo.longurl
    else
      nil
    end
  end
end
