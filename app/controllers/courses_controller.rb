class CoursesController < ApplicationController
  def create
    @course = Course.new(name: params[:course][:name],info: params[:course][:info],price: params[:course][:price],total_lessons: params[:course][:total_lessons])
    @course.save

    if @course.errors.any?
      render :'courses/new'
    else
      redirect_to root_path
    end
  end

  def new
    @course = Course.new
  end
  def index
    @course = Course.all
  end
end
