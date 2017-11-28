class UsersController < ApplicationController
   
   def index
     @users = User.where(:id => session[:user_id])
     @payment_types = PaymentType.where(:user_id => session[:user_id])
   end


   def new
     @user = User.new
   end
 
   def create
     @user = User.new(user_params)
     if @user.save
       session[:user_id] = @user.id
       redirect_to root_url, notice: 'Thank you for signing up!'
     else
       render :new
     end
   end
 
   private
 
   def user_params
     params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :street_address, :city, :state, :postal_code, :phone_number)
   end
 end
