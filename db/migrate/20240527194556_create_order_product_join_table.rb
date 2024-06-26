class CreateOrderProductJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
         t.references :order, null: false, foreign_key: true
         t.references :product, null: false, foreign_key: true
         t.float :quantity
         t.timestamps
       end
  end
end
