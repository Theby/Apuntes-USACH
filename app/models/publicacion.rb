class Publicacion < ActiveRecord::Base
	belongs_to :section
	has_one :expositor
	has_many :entries
end
