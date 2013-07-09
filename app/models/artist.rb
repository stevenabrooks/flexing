class Artist < ActiveRecord::Base
  attr_accessible :name, :song_id, :album_id
  belongs_to :album
  has_many :songs
end
