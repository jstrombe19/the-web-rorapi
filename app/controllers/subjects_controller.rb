class SubjectsController < ApplicationController
  before_action :find_all_subjects, only: [:index]

  def index 
    render json: @subjects 
  end 

  def show
    @subject = Subject.find(params[:id])
    render json: @subject
  end

  def new
    @subject = Subject.new 
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      render json: @subject
    end
  end

  private

  def find_all_subjects
    @subjects = Subject.all 
  end

  def subject_params
    params.require(:subject).permit(:title, :assigned_color, :primary, :default_position, :size_hierarchy)
  end

end
