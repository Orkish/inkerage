class Design < ActiveRecord::Base
  attr_accessible :title, :body_location, :artist, :story

  belongs_to :user
  belongs_to :artist
end
