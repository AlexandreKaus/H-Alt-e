class AddArrayPhotoToAlternatives < ActiveRecord::Migration[5.2]
  def change
    add_column :alternatives, :photos, :string, array: true, default: []
  end
end
