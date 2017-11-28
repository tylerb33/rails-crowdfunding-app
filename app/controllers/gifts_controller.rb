class GiftsController < ApplicationController
	def index
		@gifts = Gift.all
	end

	def new
		@project = Project.find(params[:project_id])
		@gift = Gift.new
	end

	def show
		@gift = Gift.find(params[:id])
	end


	def create
		@project = Project.find(params[:project_id])
		@gift = @project.gifts.create(gift_params)

		if @gift.save
			redirect_to projects_path
		else
			render 'new'
		end
		
	end


	private

		def gift_params
			params.require(:gift).permit(:title, :description, :minimum_donation)
		end
end
