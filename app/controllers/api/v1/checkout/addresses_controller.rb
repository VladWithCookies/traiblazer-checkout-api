module Api
  module V1
    module Checkout
      class AddressesController < ApplicationController
        def show
          result = run ::Checkout::Address::Show

          render json: result['representer.render.class'].new.render(@model, result['renderer_options']).to_json
        end

        def create
          result = run ::Checkout::Address::Create

          if result.success?
            render json: result['representer.render.class'].new.render(@model, result['renderer_options']).to_json
          else
            render json: { errors: result['contract.default'].errors.messages }
          end
        end
      end
    end
  end
end
