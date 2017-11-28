class PaymentTypesController < ApplicationController
	
	def index
		@payment_types = PaymentType.all
	end

	def new
		@payment_type = PaymentType.new
	end

	def create
		@payment_type = PaymentType.new(payment_params)
		@payment_type.user_id = session[:user_id]
		
		if @payment_type.save
			redirect_to users_path
		else
			render 'new'
		end

	end


	private

		def payment_params
			params.require(:payment_type).permit(:title, :account_number)
		end

	
end
