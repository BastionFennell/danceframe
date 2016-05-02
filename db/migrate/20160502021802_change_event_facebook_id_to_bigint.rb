class ChangeEventFacebookIdToBigint < ActiveRecord::Migration
  def change
    change_column :events, :facebook_id, :bigint
  end
end
