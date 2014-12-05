class AddSubNombreToSections < ActiveRecord::Migration
  def change
    add_column :sections, :sub_nombre, :string
  end
end
