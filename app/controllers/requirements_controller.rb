class RequirementsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @requirement = @user.requirements.build
    # @requirements = @user.requirements.build
    # raise
    # @requirements = Requirement.build
  end

  def create
  end

  private

  def user_requirement_params
    params.require(:requirement).permit(:user_id)
  end
end
