class Entry < ActiveRecord::Base	
  	belongs_to :publicacion

    has_one :entry_siguiente, class_name: "Entry", foreign_key: "entry_anterior_id"
    belongs_to :entry_anterior, class_name: "Entry"

    # Para quitar espacios de los nombres y otros carácteres extraños
    def slug
        nombre.downcase.gsub(" ", "_")
        nombre.gsub("á", "a")
        nombre.gsub("é", "e")
        nombre.gsub("í", "i")
        nombre.gsub("ó", "o")
        nombre.gsub("ú", "u")
        nombre.gsub("ñ", "n")
    end

    # Captura el :id del url antes de pasarsela a otros metodos
    def to_param
        "#{id}-#{slug}"
    end
end
