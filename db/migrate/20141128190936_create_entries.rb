class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :fecha
      t.string :linkMD
      t.references :publicacion, index: true

      t.timestamps
    end
  end
end
