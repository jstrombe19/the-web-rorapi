class SubjectsController < ApplicationController
  before_action :find_all_subjects, only: [:index]

  def index 
    render json: @subjects 
  end 



  private

  def find_all_subjects
    @subjects = Subject.all 
  end
end
