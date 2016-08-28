class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image
      t.text :caption
      t.references :piece, foreign_key: true

      t.timestamps
    end
  end
end
