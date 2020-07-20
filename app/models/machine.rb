class Machine < ApplicationRecord

	belongs_to :construction_site

	validates :name, presence: true

end
