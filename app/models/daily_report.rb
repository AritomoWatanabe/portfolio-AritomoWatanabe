class DailyReport < ApplicationRecord

	belongs_to :construction_site

	validates :construction_site, presence: true
	validates :content, presence: true
	validates :company_people, presence: true

end
