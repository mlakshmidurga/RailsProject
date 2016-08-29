class AddColumnPriceToFlowers < ActiveRecord::Migration[5.0]
  def change
    change_column :flowers, :price, :decimal, precision: 12, scale: 3
  end
end
