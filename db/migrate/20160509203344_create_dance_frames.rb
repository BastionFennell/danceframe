class CreateDanceFrames < ActiveRecord::Migration
  def change
    create_table :dance_frames do |t|
      t.references :PreEvent, index: true
      t.references :Event, index: true
      t.references :User, index: true

      t.timestamps
    end
  end
end
