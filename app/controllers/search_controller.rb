class SearchController < ApplicationController
  def get_result
  	if params[:q][:title_cont].blank?
  		redirect_to root_path
  	else
	  	@result = Topic.search(params[:q]).result
	  	render :get_result
	  end
  end

  def result
  	get_result
  end
end
