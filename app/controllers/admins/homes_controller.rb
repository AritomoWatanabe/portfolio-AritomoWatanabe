class Admins::HomesController < ApplicationController

	def top
		@photos = Photo.all
	end

end
