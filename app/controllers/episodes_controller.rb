class EpisodesController < ApplicationController
  before_action :authenticate_user!

  def show
    @episode = Episode.joins(:course)
                      .where(
                      'courses.slug' => params[:slug_course],
                      'slug' => params[:slug_episode]
                      ).first
    if @episode.nil?
      flash[:notice] = "Oups, we can't find an episode for this url."
      redirect_to root_path
    end
  end
end
