# frozen_string_literal: true

module Api
  class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token, if: proc { |c| c.request.format == 'application/json' }
  end
end
