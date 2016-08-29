class RemovePhotosFromPieces < ActiveRecord::Migration[5.0]
  def change
    remove_column :pieces, :photo, :string
  end
end
