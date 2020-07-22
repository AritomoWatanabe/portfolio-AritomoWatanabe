class Machine < ApplicationRecord

	belongs_to :construction_site

	validates :name, presence: true

	def self.search(search)
      if search
        Machine.where(['name LIKE ? OR construction_site_id LIKE ?',
         "%#{search}%", "%#{search}%"])
      else
        Machine.all
      end
  end

end
