class ConstructionSite < ApplicationRecord

	has_many :attendance_records
	has_many :daily_reports
	has_many :machines
	has_many :photos


end
