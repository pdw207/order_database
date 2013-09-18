class AddFacturaToSales < ActiveRecord::Migration
 def self.up
    add_attachment :sales, :factura
  end

  def self.down
    remove_attachment :sales, :factura
  end
end
