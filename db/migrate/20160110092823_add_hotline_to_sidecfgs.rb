class AddHotlineToSidecfgs < ActiveRecord::Migration
  def change
    add_column :sidecfgs, :hotline, :string
  end
end
