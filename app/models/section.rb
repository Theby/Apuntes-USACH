class Section < ActiveRecord::Base
    #attr_accessible :name
	has_many :publicacions

    # Para quitar espacios de los nombres y otros carácteres extraños
    def slug
        direccion = nombre

        direccion = direccion.downcase
        direccion = direccion.gsub("á", "a")
        direccion = direccion.gsub("é", "e")
        direccion = direccion.gsub("í", "i")
        direccion = direccion.gsub("ó", "o")
        direccion = direccion.gsub("ú", "u")
        direccion = direccion.gsub("ñ", "n")
        direccion.delete(' ')
    end

    # Captura el :id del url antes de pasarsela a otros metodos
    def to_param
        "#{id}-#{slug}"
    end
end
