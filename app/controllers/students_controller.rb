class StudentsController < ApplicationController
  before_action :set_student, only: :show
  before_action :student_params, only: :create
  
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  private 
  
  def set_student
    @student = Student.find(params[:id])
  end 
  
  def student_params 
    params.require(:student).permit(:first_name, :last_name)
  end

end
