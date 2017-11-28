class ContributionsController < ApplicationController
	def new
		@project = Project.find(params[:project_id])
		@contribution = Contribution.new
	end

	def create
		@project = Project.find(params[:project_id])
		@contribution = @project.contributions.create(contribution_params)

		if @contribution.save
			redirect_to @contribution
		else
			render 'new'
		end
		
	end



	private

		def contribution_params

			params.require(:contribution).permit(:donation_amount, :amount_remaining, :project_id)

		end

end
