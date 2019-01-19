class CoursesController < ApplicationController
  def create
    @course = Course.new
    @course.name = params[:course][:name]
    @course.short_description = params[:course][:short_description]
    @course.long_description = params[:course][:long_description]
    @course.price = params[:course][:price]
    @course.location = params[:course][:location]
    @course.save

    if @course.errors.any?
      render :new
    else
      redirect_to root_path
    end
  end

  def new
    @course = Course.new
  end
end
