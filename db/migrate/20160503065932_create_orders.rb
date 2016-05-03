class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :username
      t.string :phone
      t.text :message

      t.timestamps null: false
    end
  end
end
