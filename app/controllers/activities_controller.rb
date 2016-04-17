class ActivitiesController < InheritedResources::Base
before_action :authenticate_user!

  private

    def activity_params
      params.require(:activity).permit(:name, :chapter, :instruction, :desc, :attachments, :user_id, :course_id)
    end
end

