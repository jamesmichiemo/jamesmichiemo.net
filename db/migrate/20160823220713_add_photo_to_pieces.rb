class AddPhotoToPieces < ActiveRecord::Migration[5.0]
  def change
    add_column :pieces, :photo, :string
  end
end
