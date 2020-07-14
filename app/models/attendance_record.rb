class AttendanceRecord < ApplicationRecord

	belongs_to :user
	belongs_to :construction_record

end
