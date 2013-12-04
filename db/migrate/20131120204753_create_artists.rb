class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :nombre
      t.string :papel
      t.date :fecha_de_eleccion
      t.string :nombre_de_banco
      t.string :cuenta_de_banco
      t.string :telefono
      t.string :direccion_1
      t.string :direccion_2
      t.string :direccion_3

      t.timestamps
    end
  end
end
