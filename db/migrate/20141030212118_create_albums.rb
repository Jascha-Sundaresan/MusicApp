class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, presence: true
      t.integer :band_id, presence: true
      t.boolean :live_recording, presence: true

      t.timestamps
    end
    add_index :albums, :band_id
  end
end
