class UserOrgsController < ApplicationController
  def create
    UserOrg.create(
      user_id: params["user_id"],
      organization_id: params["organization_id"]
    )
    redirect_to '/organizations'
  end
end
