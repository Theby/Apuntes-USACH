class CreatePublicacions < ActiveRecord::Migration
  def change
    create_table :publicacions do |t|
      t.string :nombre
      t.string :year
      t.string :semestre
      t.references :section, index: true

      t.timestamps
    end
  end
end
