class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(slug: params[:slug])

    if @course.nil?
      flash[:notice] = "Oups, we can't find a course for this url."
      redirect_to root_path
    end
  end
end
