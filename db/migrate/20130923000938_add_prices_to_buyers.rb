class AddPricesToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :necklaces_blue, :integer
    add_column :buyers, :necklaces_yellow, :integer
    add_column :buyers, :necklaces_green, :string
    add_column :buyers, :bracelets, :integer
    add_column :buyers, :earrings, :integer
    add_column :buyers, :keychains, :integer
    add_column :buyers, :wallets, :integer
  end
end
