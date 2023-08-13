# frozen_string_literal: true

json.data do
  json.success @success

  if @success
    json.order @order, :id, :food_id, :quantity, :coupon_id, :total_price
  else
    json.error @error
  end
end
