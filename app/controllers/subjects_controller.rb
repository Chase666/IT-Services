class SubjectsController < ApplicationController
    def create
      @subject = Subject.new(name: params[:subject][:name],description: params[:subject][:description])
      @subject.save
      if @subject.errors.any?
        render 'new'
      else
        redirect_to root_path
      end
    end

    def new
      @subject = Subject.new
    end
  def index
    @subject = Subject.all
  end
  def about

  end
end
