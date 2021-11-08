class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :body

	#implementation of concerns

	after_initialize :set_defaults

	def set_defaults
		#self.badge ||= 'https://via.placeholder.com/250x250' #before concern
		self.badge ||= Placeholder.image_generator(height: '250', width: '250') #after implementation of concern file placeholder
	end

end
