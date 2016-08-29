class AddColumnActiveToFlower < ActiveRecord::Migration[5.0]
  def change
    add_column :flowers, :active, :boolean
  end
end
