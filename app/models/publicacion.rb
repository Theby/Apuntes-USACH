class Publicacion < ActiveRecord::Base
	belongs_to :section
	has_many :expositors
	has_many :entries
end
