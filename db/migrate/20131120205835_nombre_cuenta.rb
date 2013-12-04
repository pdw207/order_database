class NombreCuenta < ActiveRecord::Migration
  def change
  	add_column :artists, :nombre_cuenta_de_banco, :integer
  end
end
