class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.datetime :added_date
      t.datetime :due_date
      t.boolean :completed
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
