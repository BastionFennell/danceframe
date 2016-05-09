class AddDanceFrameToPreEvent < ActiveRecord::Migration
  def change
    add_reference :pre_events, :danceframe, index: true
  end
end
