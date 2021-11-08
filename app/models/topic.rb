class Topic < ApplicationRecord
		validates_presence_of :title
		has _many: blogs
end
