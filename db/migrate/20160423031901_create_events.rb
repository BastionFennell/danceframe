class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.integer :facebook_id

      t.timestamps
    end
  end
end
