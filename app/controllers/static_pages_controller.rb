  class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      debugger
      @reply = @micropost_id.replies.build
    end
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
