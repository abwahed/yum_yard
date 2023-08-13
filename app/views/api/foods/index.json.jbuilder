# frozen_string_literal: true

json.data do
  json.page @page
  json.applied_filters @filters
  json.foods @foods, :id, :name, :image_url, :stock_quantity, :price, :category
end
