class RemoveInventoryNumberFromArtifacts < ActiveRecord::Migration[6.0]
  def change

    remove_column :artifacts, :inventory_number, :string
  end
end
