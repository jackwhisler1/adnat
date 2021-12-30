class OrganizationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @organizations = Organization.all
  end
  def edit
    @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    p @organization
    @organization.name = params[:organization][:name] || @organization.name
    @organization.hourly_rate = params[:organization][:hourly_rate] || @organization.hourly_rate
    if @organization.save
      redirect_to '/organizations'
    else
      render :edit
    end
    # @organization.update(name: params[:name], hourly_rate: params[:hourly_rate])
    # redirect_to '/organizations'
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
