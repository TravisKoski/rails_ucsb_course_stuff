class ActiveQuartersController < ApplicationController
  before_action :setActiveQuarter, only: [:update]
  def new
    @ActiveQuarter = ActiveQuarter.new
  end

  def create
    #delete everything before the creation so that only one filter is avaiable at a time
    ActiveQuarter.delete_all
    @ActiveQuarter = ActiveQuarter.new(active_quarter_params)
    if @ActiveQuarter.save
      redirect_to courses_path
    else
      render "new"
    end
  end

  def update
    if @ActiveQuarter.update(active_quarter_params)
      redirect_to courses_path
    else
      render "new"
    end
  end
  def show
    puts "im in show"
  end

  def destroy
    
    ActiveQuarter.delete_all
    redirect_to courses_path
  end
  private
  def setActiveQuarter
    @ActiveQuarter = ActiveQuarter.find(params[:id])
  end
  def active_quarter_params
    params.require(:active_quarter).permit(:currentQuarter)
  end

end
