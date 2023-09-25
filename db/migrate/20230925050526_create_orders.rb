class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.integer :amount, null: false, default: 0
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :meal, null: false, foreign_key: { to_table: :meals }
      t.timestamps
    end
  end
end
