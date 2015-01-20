class AddEntryAnteriorToEntry < ActiveRecord::Migration
  def change
    add_reference :entries, :entry_anterior, index: true
  end
end
