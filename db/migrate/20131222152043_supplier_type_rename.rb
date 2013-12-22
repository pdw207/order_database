class SupplierTypeRename < ActiveRecord::Migration
  def change
  	rename_column :suppliers, :type, :tipo
  end
end
