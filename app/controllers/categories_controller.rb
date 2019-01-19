class CategoriesController < ApplicationController
  def create
    @category = Category.new
    @category.name = params[:category][:name]
    @category.save

    if @category.errors.any?
      render :new
    else
      redirect_to root_path
    end
  end

  def new
    @category = Category.new
  end
end