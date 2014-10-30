class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name, presence: true
      t.integer :album_id, presence: true
      t.boolean :bonus, presence: true
      t.text :lyrics

      t.timestamps
    end
    add_index :tracks, :album_id
  end
end
