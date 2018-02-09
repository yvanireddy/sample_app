class UsersController < ApplicationController

	def index
	  @user = current_user
	  @enquiry = Enquiry.all
	end

	def create_enquiry
		@user = current_user
		@enquiry = @user.enquiries.new(enquiry_params)
		if @enquiry.save
			redirect_to users_path
		else
			redirect_to user_enquiry_path(@user)
		end
	end

	private

	def enquiry_params
      params.require(:enquiry).permit(:name, :mail_id, :contact_no, :description, :user_id)
    end
end
