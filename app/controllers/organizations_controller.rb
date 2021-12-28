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
    @organization.update(name: params[:name], hourly_rate: params[:hourly_rate])
    redirect_to '/organizations'
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(name: params[:name], hourly_rate: params[:hourly_rate])
    if @organization.save
      redirect_to '/organizations'
    else
      render :new
    end
  end
end
