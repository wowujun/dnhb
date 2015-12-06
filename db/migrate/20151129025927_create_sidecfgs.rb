class CreateSidecfgs < ActiveRecord::Migration
  def change
    create_table :sidecfgs do |t|
      t.string :company
      t.string :tel
      t.string :fax
      t.string :address
      t.string :dingyuhao

      t.timestamps null: false
    end
  end
end
