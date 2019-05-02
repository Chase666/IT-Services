class CompaniesController < ApplicationController
  def create
    @company = Company.new(company_params)
    @company.save
    if @company.errors.any?
      render :'companies/new'
    else
      redirect_to @company
    end
  end

  def new
    @company = Company.new
  end
  def index
    if params[:s] != nil
      @companies = Company.search_by_name(params[:s]).paginate(:page => params[:page],per_page:4)
    else
      @companies = Company.all.paginate(:page => params[:page],per_page:4)
    end
  end
  def show
    @company = Company.find_by(id: params[:id])
    @company_courses = Course.where(company_id: [@company.id])
    if @company.nil?
      redirect_to root_path
    end
  end
  def edit
    @company = Company.find(params[:id])
  end
  def update
    @company = Company.update(params[:id],company_params)
    @company.save
    if @company.errors.any?
      render 'edit'
    else
      redirect_to company_path
    end
  end
  def delete
    @company = Company.find(params[:id])
  end
  def destroy
    Company.find(params[:id]).destroy
    redirect_to companies_path
  end
  private
    def company_params
      params.require(:company).permit(:name,:foundation_year,:description,:phone,:email,:organization_name,:website)
    end
end
