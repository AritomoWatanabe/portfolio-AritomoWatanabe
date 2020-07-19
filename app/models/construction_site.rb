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

  def self.search(search)
      if search
        ConstructionSite.where(['name LIKE ? OR address LIKE ? OR prime_contractor LIKE ? OR foremen LIKE ?',
         "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
      else
        ConstructionSite.all
      end
    end


end
