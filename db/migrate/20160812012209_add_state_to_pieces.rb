class AddStateToPieces < ActiveRecord::Migration[5.0]
  def change
    add_column :pieces, :state, :string, :limit => 20, :default => "draft"
  end
end
