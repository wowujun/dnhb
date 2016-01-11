class CreateSideshixts < ActiveRecord::Migration
  def change
    create_table :sideshixts do |t|
      t.string :title
      t.timestamp :date
      t.text :content

      t.timestamps null: false
    end
  end
end
