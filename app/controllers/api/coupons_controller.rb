# frozen_string_literal: true

module Api
  class CouponsController < Api::ApiController
    before_action :set_food, only: [:create]
    before_action :set_coupon, only: [:destroy]

    def create
      @success = false
      if @food.has_active_coupon?
        @error = 'This food item already has an active coupon'
      elsif CouponManager::OfferAmountValidator.call(@food, coupon_params[:offer_amount])
        @success = true
        @coupon = Coupon.create(coupon_params.merge(expires_at: Time.now + 2.minutes))
      else
        @error = 'Offer amount must me in between 10% to 50% of food price'
      end

      render :create, status: @success ? 201 : 422
    end

    def destroy
      if @coupon.destroy
        render status: 200,
               json: {
                 data: { success: true }
               }
      else
        render status: 422,
               json: {
                 data: { success: false, error: @coupon.errors }
               }
      end
    end

    private

    def set_food
      @food = Food.find_by(id: coupon_params[:food_id])
    end

    def set_coupon
      @coupon = Coupon.find_by(id: params[:id])
    end

    def coupon_params
      params.require(:coupon).permit(:food_id, :token, :offer_amount)
    end
  end
end
