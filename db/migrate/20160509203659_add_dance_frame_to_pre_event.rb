class AddDanceFrameToPreEvent < ActiveRecord::Migration
  def change
    add_reference :pre_events, :dance_frame, index: true
  end
end
