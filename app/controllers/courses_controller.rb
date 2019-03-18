class CoursesController < ApplicationController
  def create
    @course = Course.new(course_params)
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
  def show
    @course = Course.find_by(id: params[:id])
    if @course.nil?
      redirect_to courses_path
    end
  end
  def edit
    @course = Course.find(params[:id])
  end
  def update
    @course = Course.update(params[:id],course_params)
    @course.save
    if @course.errors.any?
      render 'edit'
    else
      redirect_to course_path
    end
  end
  def delete
    @course = Course.find(params[:id])
  end
  def destroy
    Course.find(params[:id]).destroy
    redirect_to courses_path
  end
  private
    def course_params
    params.require(:course).permit(:name,:info,:price,:total_lessons,:company_id,:subject_id)
    end
end
