class SubjectsController < ApplicationController
    def create
      @subject = Subject.new(subject_params)
      @subject.save
      if @subject.errors.any?
        render 'new'
      else
        redirect_to subject_path
      end
    end

    def new
      @subject = Subject.new
    end
    def index
      @subjects = Subject.all.paginate(:page => params[:page],per_page:1)
    end
    def show
      @subject = Subject.find_by(id: params[:id])
      @subject_courses = Course.where(subject_id: [@subject.id])
      if @subject.nil?
        redirect_to root_path
      end
    end
    def edit
      @subject = Subject.find(params[:id])
    end
    def update
      @subject = Subject.update(params[:id],subject_params)
      @subject.save
      if @subject.errors.any?
        render 'edit'
      else
        redirect_to subject_path
      end
    end
    def delete
      @subject = Subject.find(params[:id])
    end
    def destroy
      Subject.find(params[:id]).destroy
      redirect_to subjects_path
    end
    private
      def subject_params
      params.require(:subject).permit(:avatar,:name,:description)
      end
end
