class RemoveWordsFromPieces < ActiveRecord::Migration[5.0]
  def change
    remove_column :pieces, :words, :text
  end
end
