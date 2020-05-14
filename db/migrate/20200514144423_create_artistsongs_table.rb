class CreateArtistsongsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :artistsongs do |t|
      t.integer :song_id
      t.integer :artist_id
    end
  end
end
