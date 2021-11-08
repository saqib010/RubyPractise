class Portfolio < ApplicationRecord
	validates_presence_of :body, :title, :main_image, :thumb_image

	#define 1 way the custom scope of the filter 
	def self.angular
		where(subtitle: 'Angular')
	end

	#2nd way to define custom scope

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Rubby on Rails')}
		#ruby_on_rails_portfolio_items  is just a var
end
