class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :isadmin
      t.string :phone_number
      t.string :billing_address
      t.string :delivery_address
      t.string :password_digest # Pour Devise MDP
      t.timestamps
    end
  end
end
