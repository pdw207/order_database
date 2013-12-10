class BeginningBalanceToArtist < ActiveRecord::Migration
  def change
	  add_column :artists, :beg_pago, :decimal
	  add_column :artists, :beg_venta, :decimal
	  add_column :artists, :beg_grupo,  :decimal

  end
end
