class UploadFile < ApplicationRecord
	mount_uploader :file, UploadFileUploader
	belongs_to :construction_site
end
