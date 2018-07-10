class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :list_name_encoded
      t.string :json
      t.timestamps
    end
  end
end
