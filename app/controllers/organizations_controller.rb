class OrganizationsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @organizations = Organization.all
  end
  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    # organization.name = params[:name] || @organization.name
    # organization.hourly_rate = params[:hourly_rate] || @organization.hourly_rate
    # if @organization.save
    #   redirect_to organization_path
    # else
    #   @organization.errors.full_messages
    # end
    @organization.update(name: params[:name], hourly_rate: params[:hourly_rate])
    redirect_to '/organizations'
  end
end
