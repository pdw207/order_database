class ChangeFormatBuyers < ActiveRecord::Migration
   	def self.up
	   	change_column :buyers, :necklaces_blue, :decimal
	    change_column :buyers, :necklaces_yellow, :decimal
	    change_column :buyers, :necklaces_green, :decimal
	    change_column :buyers, :bracelets, :decimal
	    change_column :buyers, :earrings, :decimal
	    change_column :buyers, :keychains, :decimal
	    change_column :buyers, :wallets, :decimal
	end

  	def self.down
	    add_column :buyers, :necklaces_blue, :integer
	    add_column :buyers, :necklaces_yellow, :integer
	    add_column :buyers, :necklaces_green, :string
	    add_column :buyers, :bracelets, :integer
	    add_column :buyers, :earrings, :integer
	    add_column :buyers, :keychains, :integer
	    add_column :buyers, :wallets, :integer
  	end

end
