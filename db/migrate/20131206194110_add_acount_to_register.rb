class AddAcountToRegister < ActiveRecord::Migration
  def change
  	  	    add_column :registers, :amount, :decimal
  	  	    add_column :registers, :account, :string
  end
end
