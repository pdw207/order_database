class OrderLocation < ActiveRecord::Migration
  def change
  	    add_column :orders, :location_id, :string
  end
end
