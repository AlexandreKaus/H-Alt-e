class AddPicToAlternatives < ActiveRecord::Migration[5.2]
  def change
    add_column :alternatives, :pic, :string
  end
end
