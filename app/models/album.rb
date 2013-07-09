class Album < ActiveRecord::Base
  attr_accessible :name, :song_id, :artist_id
  belongs_to :artist
  has_many :songs
end
