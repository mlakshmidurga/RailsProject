class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :name
      t.text :description
      t.text :image
      t.decimal :price

      t.timestamps null: false
    end
  end
end
