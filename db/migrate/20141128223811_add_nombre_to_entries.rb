class AddNombreToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :nombre, :string
  end
end
