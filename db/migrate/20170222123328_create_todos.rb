class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :todos, :title
  end
end
