class CreateClasscas < ActiveRecord::Migration
  def change
    create_table :classcas do |t|
      t.string :title
      t.string :image
      t.text :content
      t.timestamp :time

      t.timestamps null: false
    end
  end
end
