class CoursesController < ApplicationController
  def index
    @quarterFilter = ActiveQuarter.first
    if @quarterFilter
      @courses = Course.where(quarter: @quarterFilter.currentQuarter)
    else
      @courses = Course.all
    end
  end

  def create
    @course = Course.new(course_params)

     if  @course.save
      flash[:notice] = "Course created successfully"
      redirect_to courses_path
    end
  end

  def show
    @course = Course.find(params[:id])
  end
  def new
    @course = Course.new
  end
  def update
    @course = Courses.find(params[:id])

    if @course.update(course_params)
      flash[:notice] = "Course updated successfully"
      redirect_to courses_path
  
    end 
  end

  def destroy
    @course= Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
  private
  def course_params
    params.require(:course).permit(:name, :dept, :professor, :quarter)
  end
end
