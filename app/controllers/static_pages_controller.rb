class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
  def help
  end

  def about
  end

  def contact
  end

  def call_for_papers

  end

  def paper
    @papers = DataFile.paginate(page: params[:page])
  end
end
