class HomeController < ApplicationController
  def index
    @recipes = Recipe.order('created_at desc')
  end

  def search_by_categories
    @recipes = Recipe.order('created_at desc')

    if params[:query].present?
      @recipes = @recipes.includes(:categories)
      .where(
        'lower(recipes.title) LIKE ? OR lower(categories.name) LIKE ?', 
        "%#{params[:query].downcase}%", "%#{params[:query].downcase}%"
      ).references(:categories)
    end
  end

  def search_by_users
    @users = User.order('created_at desc')

    if params[:query].present?
      @users = @users.where('lower(name) LIKE ?', "%#{params[:query].downcase}%")
    end
  end
end
