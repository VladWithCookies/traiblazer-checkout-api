module Api
  module V1
    module Checkout
      class PaymentsController < ApplicationController
        def show
          result = run ::Checkout::Payment::Show

          render json: result['representer.render.class'].new.render(@model, result['renderer_options']).to_json
        end

        def create
          result = run ::Checkout::Payment::Create

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
