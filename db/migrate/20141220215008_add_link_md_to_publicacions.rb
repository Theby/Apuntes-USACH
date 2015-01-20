class AddLinkMdToPublicacions < ActiveRecord::Migration
  def change
    add_column :publicacions, :linkMD, :string
  end
end
