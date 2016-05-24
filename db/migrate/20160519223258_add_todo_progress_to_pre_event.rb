class AddTodoProgressToPreEvent < ActiveRecord::Migration
  def change
    add_column :pre_events, :todo_progress, :boolean, array: true
  end
end
