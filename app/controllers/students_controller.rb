class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]
  before_action :set_course
  def index
    if params[:course_id]
      @students = Student.where(:course_id => @course.id)
    else
      @students = Student.all
    end
  end
  def show
  end

  def create
    @student = Student.new(student_params)
    @student
    if @student.save
      redirect_to students_path
    else
      render "new"
    end
  end

  def update
    if @student.update(student_params)
      redirect_to course_students_path(@course)
    end
  end

  def destroy
  end
  private
  def student_params
    require params[:student].permit(:name, :major, :year)
  end
  def set_student
    @student = Student.find(params[:id])
  end
  def set_course
    @course = Course.find(params[:course_id])
  end
end
