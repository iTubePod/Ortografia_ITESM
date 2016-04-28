class CoursesController < InheritedResources::Base
before_action :authenticate_user!
	def index
		@cursos = UserCourse.where("user_id = ?", current_user)
	end
  	def show
  		@course = Course.find(params[:id])
  		@activities = Activity.where("course_id = ?", @course.id)
  	end
  private
    def course_params
      params.require(:course).permit(:course, :c_name)
    end
end


