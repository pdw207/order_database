class Photolinkdesign < ActiveRecord::Migration
  def change
	add_column :designs, :url1, :string
	add_column :designs, :url2, :string
	add_column :designs, :url3, :string
  end
end
