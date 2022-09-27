class StudentsController < ApplicationController

  def index
    # students = if params[:name]
    #   Student.find_by(id: params[:id], name: params[:name])
    # else
    # Student.all
    # end
    # render json: students
    students = Student.all
    render json: students 
  end
  # def show 
  #   student = Student.find(params[:id])
  #   render json: student
  # end
def show 
  student = Student.find_by(id: params[:id])
  render json: student
end


end
