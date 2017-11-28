class ProjectsController < ApplicationController
	def index
		@projects = if params[:term]
		Project.where('title LIKE ?', "%#{params[:term]}%")
		else
		@projects = Project.all
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user_id = session[:user_id]
		puts "HERE #{@project.inspect}"
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
		
	end

	def show
	    @project = Project.find(params[:id])
	end



	private

		def project_params

			params.require(:project).permit(:title, :description, :funding_goal, :start_date, :end_date, :user_id, :image, :project_type_id, :term)

		end
end