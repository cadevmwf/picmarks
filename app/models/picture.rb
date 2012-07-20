class Picture < ActiveRecord::Base
  attr_accessible :favorite, :note, :url
  # attr_protected :secret_token, :special
end
