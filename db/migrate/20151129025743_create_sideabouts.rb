class CreateSideabouts < ActiveRecord::Migration
  def change
    create_table :sideabouts do |t|
      t.text :about
      t.text :culture
      t.text :qualification
      t.text :concept
      t.text :speech

      t.timestamps null: false
    end
  end
end
