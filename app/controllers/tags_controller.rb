class TagsController < ApplicationController
  def index
  	@topics = Topic.tagged_with(params[:tag])
  end
end
