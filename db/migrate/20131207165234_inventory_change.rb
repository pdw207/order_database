class InventoryChange < ActiveRecord::Migration
  def change
    add_column :products, :last_location, :string
  end
end
