class AddRowToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :row, :integer
  end
end
