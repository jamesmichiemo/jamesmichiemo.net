class AddPieceIdToWords < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :piece_id, :integer
  end
end
