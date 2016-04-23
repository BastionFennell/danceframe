class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.integer :offset_x
      t.integer :offset_y
      t.string :source
      t.integer :facebook_id
      t.belongs_to :event, index: true

      t.timestamps
    end
  end
end
