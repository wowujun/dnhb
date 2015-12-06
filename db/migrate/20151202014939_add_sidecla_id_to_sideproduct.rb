class AddSideclaIdToSideproduct < ActiveRecord::Migration
  def change
    add_column :sideproducts, :sidecla_id, :integer
  end
end
