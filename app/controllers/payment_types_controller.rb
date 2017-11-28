class PaymentTypesController < ApplicationController
	
	def index
		@payment_types = PaymentType.all
	end

	def new
		@payment_type = PaymentType.new
	end

	def edit
		@payment_type = PaymentType.find(params[:id])
	end

	def update
		@payment_type = PaymentType.find(params[:id])
		if @payment_type.update(payment_params)
			redirect_to users_path
		else 
			render 'edit'
		end
	end

	def show
		@payment_type = PaymentType.where(:user_id => session[:user_id])
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

	def destroy
		@payment_type = PaymentType.find(params[:id])
        @payment_type.destroy
        redirect_to payment_types_path
	end

	


	private

		def payment_params
			params.require(:payment_type).permit(:title, :account_number)
		end

	
end
