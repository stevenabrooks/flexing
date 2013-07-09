class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :song_id
      t.integer :album_id

      t.timestamps
    end
  end
end
