class Users::RegistrationsController < Devise::RegistrationsController

  # def create
  #   username = params[:user][:email].match(/(.+)@(.+)/)[1]
  #   user = User.new(user_params.merge(password: generated_password, username: username))
  #   if user.save
  #     sign_in(:user, user)
  #     redirect_to auctions_path
  #   end
  # end


protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :selfie, :document)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :selfie, :document, :current_password)
  end

end
