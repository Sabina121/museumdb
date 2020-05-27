class AddDetailsToArtifacts < ActiveRecord::Migration[6.0]
  def change
    add_column :artifacts, :inventory_number, :string
    add_column :artifacts, :museum_name, :string
    add_column :artifacts, :collection, :string
    add_column :artifacts, :era, :string
    add_column :artifacts, :creator, :string
    add_column :artifacts, :quantity, :integer
    add_column :artifacts, :owner, :string
    add_column :artifacts, :acquisition, :string
    add_column :artifacts, :price, :float
    add_column :artifacts, :inventory_by, :string
    add_column :artifacts, :revision_date, :datet
    add_column :artifacts, :revision_by, :string
  end
end
