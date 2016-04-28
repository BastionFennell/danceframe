class AddCoverToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :cover, index: true
  end
end
