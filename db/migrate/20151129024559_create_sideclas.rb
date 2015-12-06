class CreateSideclas < ActiveRecord::Migration
  def change
    create_table :sideclas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
