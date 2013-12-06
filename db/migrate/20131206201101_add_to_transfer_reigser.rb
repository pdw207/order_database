class AddToTransferReigser < ActiveRecord::Migration
  def change
  	    add_column :registers, :account_to, :string
  end
end
