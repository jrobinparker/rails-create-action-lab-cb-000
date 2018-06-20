class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @Student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    @Student.save
    redirect_to student_path(student)
  end

  private 
  
  def set_student
    @student = Student.find(params[:id])
  end 
  
  def student_params 
    params.require(:student).permit(:first_name, :last_name)
  end

end
