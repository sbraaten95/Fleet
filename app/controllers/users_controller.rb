class UsersController < ApplicationController
  def index
  end
  def login
  	redirect_to '/booking/user_reservation'
  end
  def register
  	@new_user = User.new(register_params)
  	@new_user.save
  	redirect_to '/booking/user_reservation'
  end
  def register_params
  	params.require(:new_user).permit(:first_name, :last_name, :phone, :email, :password)
  end
end
