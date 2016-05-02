class ChangeCoverFacebookIdToBigint < ActiveRecord::Migration
  def change
    change_column :covers, :facebook_id, :bigint
  end
end
