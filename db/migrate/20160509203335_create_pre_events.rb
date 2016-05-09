class CreatePreEvents < ActiveRecord::Migration
  def change
    create_table :pre_events do |t|

      t.timestamps
    end
  end
end
