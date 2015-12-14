class PasswordResetsController < ApplicationController
	before_action :get_member, only: [:edit, :update]

  def new
  end

  def create
  	@member = Member.find_by(member_email: params[:password_reset][:member_email].downcase)
  	if @member 
  		@member.create_reset_digest
  		@member.send_password_reset_email
  		flash[:info] = "Email sent with password reset instructions."
  		redirect_to root_url
  	else
  		flash.now[:danger] = "Email address not found."
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @member.password_reset_expired?	
  		flash[:danger] = "Password reset has expired."
  		redirect_to new_password_reset_path
  	elsif @member.update_attributes(member_params)
  			if (params[:member][:password].blank? && params[:member][:password_confirmation].blank?)
  				flash.now[:danger] = "Password/confirmation can't be blank."
  				render 'edit'
  			else
  				flash[:success] = "Password has been reset."
  				log_in @member
  				redirect_to @member
  			end
  	else
  			render 'edit'
  	end
  end

  private

  	def member_params
  		params.require(:member).permit(:password, :password_confirmation)
  	end

  	def get_member
  		@member = Member.find_by(member_email: params[:member_email])
  		unless @member && @member.authenticated?(:reset, params[:id])
  			redirect_to root_url
  		end
  	end

end
