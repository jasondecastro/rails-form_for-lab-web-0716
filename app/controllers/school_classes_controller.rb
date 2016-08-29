class SchoolClassesController < ApplicationController
  def index
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)

    if @school_class.save
      redirect_to school_class_path(@school_class)
    end

  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.update(SchoolClass.find(params[:id]), school_class_params)

    if @school_class.save
      redirect_to school_class_path(@school_class)
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end