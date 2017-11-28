class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def require_user
		if session[:user_id]
			true
		else
			redirect_to new_user_path
		end
	end

	def index
	  @projects = if params[:term]
	    Project.where('name LIKE ?', "%#{params[:term]}%")
	  else
	    Project.all
	  end
	end

	private

		def search_params
			params.require(:project).permit(:term)
		end

end
