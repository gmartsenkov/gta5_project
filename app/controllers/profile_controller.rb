class ProfileController < ApplicationController
  def index
  @user = current_user
  end

  def profile_by_id
  	@user = User.find(params[:id])
  	
  end

end
