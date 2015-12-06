class AddAvatarToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :avatar, :string
  end
end
