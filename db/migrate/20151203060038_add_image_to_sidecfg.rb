class AddImageToSidecfg < ActiveRecord::Migration
  def change
    add_column :sidecfgs, :image, :string
  end
end
