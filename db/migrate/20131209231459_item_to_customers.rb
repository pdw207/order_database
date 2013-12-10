class ItemToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :green, :decimal
    add_column :customers, :blue, :decimal
    add_column :customers, :yellow, :decimal
    add_column :customers, :bracelet, :decimal
    add_column :customers, :earring, :decimal
    add_column :customers, :keychain, :decimal
    add_column :customers, :coin_purse, :decimal
  end
end
