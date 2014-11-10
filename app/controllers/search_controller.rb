class SearchController < ApplicationController
  def get_result
  	if params[:q][:title_cont].blank?
  		redirect_to root_path
  	else
	  	@result = Kaminari.paginate_array(Topic.search(params[:q]).result).page(params[:page]).per(10)
	  	render :get_result
	  end
  end

  def result
  	get_result
  end
end
