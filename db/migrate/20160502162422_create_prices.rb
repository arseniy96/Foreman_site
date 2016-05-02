class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :title
      t.string :price

      t.timestamps null: false
    end
  end
end
