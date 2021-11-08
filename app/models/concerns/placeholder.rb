#creating concern as module to share image data b/w portfolio and skills
module Placeholder
	extend ActiveSupport::Concern
	#the funcion now will be called where this data requires
	def self.image_generator(height:,width:)
		"https://via.placeholder.com/#{height}x#{width}"
	end

end