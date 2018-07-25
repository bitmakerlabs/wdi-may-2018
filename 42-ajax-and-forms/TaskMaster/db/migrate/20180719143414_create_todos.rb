class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :content
      t.datetime :completed_date

      t.timestamps
    end
  end
end
