class CreateExpositors < ActiveRecord::Migration
  def change
    create_table :expositors do |t|
      t.string :nombre
      t.references :publicacion, index: true

      t.timestamps
    end
  end
end
