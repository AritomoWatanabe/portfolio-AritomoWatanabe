class AttendanceRecord < ApplicationRecord

	belongs_to :user
	belongs_to :construction_site

	validates :construction_site, presence: true


end
