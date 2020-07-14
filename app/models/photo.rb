class Photo < ApplicationRecord

	belongs_to :construction_site

	attachment :image, destroy: false

end
