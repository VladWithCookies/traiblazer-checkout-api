class Checkout::Shipping::Create < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Shipping::Lib::Step::Model
  step Checkout::Shipping::Lib::Step::PrepareRenderer

  step Contract::Build(constant: Checkout::Shipping::Contract::Create)
  step Contract::Validate()

  step :build_shipping_method!
  step :save!

  step Checkout::Address::Lib::Step::PrepareRenderer

  def build_shipping_method!(options, model:, **)
    model.build_shipping_method
    model.shipping_method.attributes = options['contract.default'].shipping_method.to_nested_hash
  end

  def save!(model:, **)
    model.save
  end
end
