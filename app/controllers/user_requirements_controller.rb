class UserRequirementsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @user_requirement = UserRequirement.new
  end

  def create
    user = User.find(params[:user_id])
    requirements = Requirement.find(params[:user_requirement][:requirement_id])
    requirements.each do |requirement|
      @user_requirement = UserRequirement.new(user_requirement_params)
      @user_requirement.requirement = requirement
      @user_requirement.user = user
      @user_requirement.save
    end
    if @user_requirement.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  private

  def user_requirement_params
    params.require(:user_requirement).permit(:user_id, :requirement_id)
  end
end
