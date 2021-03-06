class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo
      t.string :name
      t.text :detail
      t.integer :step
      t.references :alternative, foreign_key: true
      t.timestamps
    end
  end
end
