class Publicacion < ActiveRecord::Base
	belongs_to :section
	has_many :expositors
	has_many :entries

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
