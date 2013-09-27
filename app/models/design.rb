class Design < ActiveRecord::Base
  attr_accessible :url

  belongs_to :user
  belongs_to :artist
end
