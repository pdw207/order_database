class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :contact_name
      t.string :email
      t.string :type
      t.string :notes

      t.timestamps
    end
  end
end
