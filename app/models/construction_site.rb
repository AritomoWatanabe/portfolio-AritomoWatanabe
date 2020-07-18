class ConstructionSite < ApplicationRecord

	has_many :attendance_records
	has_many :daily_reports
	has_many :machines
	has_many :photos
	has_many :reservations

	enum process:{
    着工前: 0,
    着工中: 1,
    完工: 2,
    その他: 3,
  }

end
