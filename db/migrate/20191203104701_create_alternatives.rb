class CreateAlternatives < ActiveRecord::Migration[5.2]
  def change
    create_table :alternatives do |t|
      t.string :title
      t.text :description
      t.text :ingredients, array: true, default: []
      t.text :alt_at, array: true, default: []
      t.string :difficulty
      t.time :prep_time
      t.boolean :diy, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
