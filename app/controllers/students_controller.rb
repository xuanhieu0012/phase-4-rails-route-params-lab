class StudentsController < ApplicationController

  def index
    if params[:name]
      array = []
      array << student = Student.all.find_by(first_name: params[:name].capitalize) || Student.all.find_by(last_name: params[:name].capitalize) 
      
      render json: array
    else
      students = Student.all
      render json: students
    end
    
  end
  def details
    student = Student.find(params[:id])
    render json: student
  end


end
