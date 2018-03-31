class Url < ApplicationRecord
  validates_presence_of :longurl
  validates_presence_of :code
end
