class Fixtype < ActiveRecord::Migration
  def change
  	change_column :artists, :nombre_cuenta_de_banco,  :string
  end
end
