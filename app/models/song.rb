class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id, :album_id
  belongs_to :artist
  belongs_to :album
end
