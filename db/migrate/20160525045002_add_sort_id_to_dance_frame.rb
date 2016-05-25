class AddSortIdToDanceFrame < ActiveRecord::Migration
  def change
    add_column :dance_frames, :sort_id, :text
  end
end
