class AddSiglasToPublicacions < ActiveRecord::Migration
  def change
    add_column :publicacions, :siglas, :string
  end
end
