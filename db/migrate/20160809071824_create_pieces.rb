class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :photo
      t.string :video
      t.string :audio
      t.text :words
      t.text :caption

      t.timestamps
    end
  end
end
