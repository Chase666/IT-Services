class CompaniesController < ApplicationController
  def create
    @company = Company.new
    @company.name = params[:company][:name]
    @company.save

    if @company.errors.any?
      render :new
    else
      redirect_to root_path
    end
  end

  def new
    @company = Company.new
  end
end