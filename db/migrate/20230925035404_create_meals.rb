class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name, null: false
      t.string :icon
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
