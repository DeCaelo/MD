class SearchController < ApplicationController

  def show
    @post_records = Post.search((params[:q].present? ? params[:q] : '*')).records
  end

end
