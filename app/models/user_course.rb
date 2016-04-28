class UserCourse < ActiveRecord::Base
	belongs_to :User
	belongs_to :Course
	has_many :Activities
end
