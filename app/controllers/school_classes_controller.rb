class SchoolClassesController < ApplicationController
  def index 
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
    end
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    if @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
    else
    end
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
