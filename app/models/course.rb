class Course < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :user_courses
	has_many :activities
	cattr_accessor :current_user
end
