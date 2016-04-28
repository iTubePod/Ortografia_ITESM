class User < ActiveRecord::Base
	has_and_belongs_to_many :users
  has_many :user_courses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :authentication_keys => [:matricula]


  def email_required?
    false
  end

  def email_changed?
    false
  end
end
