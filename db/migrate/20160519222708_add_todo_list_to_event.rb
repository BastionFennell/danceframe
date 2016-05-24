class AddTodoListToEvent < ActiveRecord::Migration
  def change
    add_column :events, :todo_list, :text, array: true
  end
end
