# frozen_string_literal: true

json.data do
  json.success @success

  if @success
    json.coupon @coupon, :id, :food_id, :status, :token, :offer_amount, :expires_at
  else
    json.error @error
  end
end
