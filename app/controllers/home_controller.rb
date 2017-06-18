class HomeController < ApplicationController
  def index
    @recipes = Recipe.order('created_at desc')
  end

  def search
    @categories = Category.all
    @recipes = Recipe.order('created_at desc')

    if params[:category_ids].present?
      @recipes = @recipes.includes(:categories).where(categories: {id: params[:category_ids]})
    end

  end

end
