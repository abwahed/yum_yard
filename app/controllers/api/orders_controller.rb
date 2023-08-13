# frozen_string_literal: true

module Api
  class OrdersController < Api::ApiController
    before_action :set_food, only: [:create]
    before_action :set_coupon, only: [:create]

    def create
      @success = true
      if @food.stock_available?(order_params[:ordered])
        if !@coupon.present?
          @order = OrderManager::OrderCreator.call(
            @food,
            order_params[:ordered],
            OrderManager::TotalPriceCalculator.call(0, @food.price, order_params[:ordered])
          )
        elsif @coupon.valid?
          @order = OrderManager::OrderCreator.call(
            @food,
            order_params[:ordered],
            OrderManager::TotalPriceCalculator.call(@coupon.offer_amount, @food.price, order_params[:ordered]),
            @coupon.id
          )
        else
          @success = false
          @error = 'Coupon Expired'
        end
      else
        @success = false
        @error = 'Insufficient Stock'
      end

      render :create, status: @success ? 201 : 422
    end

    private

    def set_food
      @food = Food.find_by(id: params[:food_id])
    end

    def set_coupon
      return unless order_params[:coupon_token].present?

      @coupon = Coupon.where(
        food_id: @food.id,
        token: order_params[:coupon_token]
      ).last
    end

    def order_params
      params.require(:order).permit(:ordered, :coupon_token)
    end
  end
end
