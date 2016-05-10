class CreateDanceFrames < ActiveRecord::Migration
  def change
    create_table :dance_frames do |t|
      t.references :pre_event, index: true
      t.references :event, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
