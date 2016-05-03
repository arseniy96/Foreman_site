class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.boolean :gallery
      t.boolean :work

      t.timestamps null: false
    end
  end
end
