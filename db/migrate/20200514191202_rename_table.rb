class RenameTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :artistsongs, :artist_songs
  end
end
