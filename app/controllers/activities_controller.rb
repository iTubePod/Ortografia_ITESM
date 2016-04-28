class ActivitiesController < InheritedResources::Base
before_action :authenticate_user!
	def index
		@activities = Activity.where("user_id = ?", current_user)
	end
   def create
      @activity = Activity.new(activity_params)
      
      if @activity.save
         redirect_to rapidfire_path
      end
      
   end
    def can_administer?
      if current_user.isProfessor?
      	true
      else
      	false
      end
    end
	private
		def activity_params
		  params.require(:activity).permit(:name, :chapter, :instruction, :desc, :attachments, :user_id, :course_id)
		end
	end