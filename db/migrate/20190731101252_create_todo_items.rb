class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.string :name
      t.boolean :completed

      t.timestamps
    end
  end
end
