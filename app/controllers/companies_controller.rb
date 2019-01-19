class CompaniesController < ApplicationController
  def create
    @company = Company.new(name: params[:company][:name],foundation_year: params[:company][:foundation_year])
    @company.save

    if @company.errors.any?
      render :'companies/new'
    else
      redirect_to root_path
    end
  end

  def new
    @company = Company.new
  end
  def index
    @company = Company.all
  end
end
