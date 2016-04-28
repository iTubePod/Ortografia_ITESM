class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :questions
  belongs_to :UserCourse
  has_one :resume
  cattr_accessor :current_user
end
