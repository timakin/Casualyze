class CategoriesController < ApplicationController

  def create
    Category.create(category_params)
  end

  def destroy
  	Category.destroy(category_params)
  end

  private
  def category_params
    params.requier(:category).permit(:name, boards_attributes: [:board_name, :id, :category_id])
  end
end
