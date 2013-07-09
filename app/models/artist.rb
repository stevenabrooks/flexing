class Artist < ActiveRecord::Base
  attr_accessible :name, :song_id, :album_id
  has_many :albums
  has_many :songs
end
