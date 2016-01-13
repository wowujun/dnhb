class AddStatusToSideshixts < ActiveRecord::Migration
  def change
    add_column :sideshixts, :status, :integer
  end
end
