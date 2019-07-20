class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end
  def create
    @language = Language.new(language_params)
    @language.save
    if @language.errors.any?
      render :'languages/new'
    else
      redirect_to @language
    end
  end
  def new
    @language = Language.new
  end
  def show
    @language = Language.find_by(id: params[:id])
    if @language.nil?
      redirect_to languages_path
    end
  end
  def edit
    @language = Language.find(params[:id])
  end
  def update
    @language = Language.update(params[:id],language_params)
    @language.save
    if @language.errors.any?
      render 'edit'
    else
      redirect_to language_path
    end
  end
  def delete
    @language = Language.find(params[:id])
  end
  def destroy
    Language.find(params[:id]).destroy
    redirect_to languages_path
  end
  private
    def language_params
      params.require(:language).permit(:name,:description)
    end
end
