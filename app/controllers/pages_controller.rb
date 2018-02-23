class PagesController < ApplicationController
  access all: [:home], user: [:drafts], site_admin: :all

  def home
  end

  def drafts
    @posts_d = Post.where(user_id: current_user.id).draft.sort_by_date
    @posts_p = Post.where(user_id: current_user.id).published.sort_by_date
  end
end
