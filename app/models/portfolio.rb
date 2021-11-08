class Portfolio < ApplicationRecord
	validates_presence_of :body, :title, :main_image, :thumb_image

	#define 1 way the custom scope of the filter 
	def self.angular
		where(subtitle: 'Angular')
	end

	#2nd way to define custom scope

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Rubby on Rails')}
		#ruby_on_rails_portfolio_items  is just a var

	#define defaults values for images 
	#for every new record creation in portfolio the following items are going to set as defaults.
	after_initialize :set_defaults
	def set_defaults
		self.main_image ||= 'https://via.placeholder.com/600x400'
		self.thumb_image ||= 'https://via.placeholder.com/350x250'
	end

	# || means if main image has already value do not override it else if nil set to the default values
end
