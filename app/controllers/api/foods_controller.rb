# frozen_string_literal: true

module Api
  class FoodsController < Api::ApiController
    def index
      @page = params[:page].present? ? params[:page].to_i : 1
      @foods = Food.all
      @foods = @foods.where('lower(name) like ?', "%#{params[:name].downcase}%") if params[:name].present?
      @foods = @foods.where('price <= ?', params[:price].to_i) if params[:price].present?
      @foods = @foods.where(category: params[:category]) if params[:category].present?
      @foods = @foods.paginate(per_page: 5, page: @page)
      @filters = {
        name: params[:name].present?,
        price: params[:price].present?,
        category: params[:category].present?
      }

      render :index, status: 200
    end
  end
end
