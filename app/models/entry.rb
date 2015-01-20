class Entry < ActiveRecord::Base	
  	belongs_to :publicacion

    has_one :entry_siguiente, class_name: "Entry", foreign_key: "entry_anterior_id"
    belongs_to :entry_anterior, class_name: "Entry"
end
