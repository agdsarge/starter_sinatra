class CreateSongsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.string :genre
    end
  end
end
