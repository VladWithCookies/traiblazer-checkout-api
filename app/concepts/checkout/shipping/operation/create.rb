class Checkout::Shipping::Create < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Address::Lib::Step::Model

  step Contract::Build(constant: Checkout::Shipping::Contract::Create)
  step Contract::Validate()

  step :build_shipping_method!
  step :save_shipping_method!

  step Checkout::Address::Lib::Step::PrepareRenderer

  def build_shipping_method!(options, model:, **)
    model.build_shipping_method
    model.shipping_method.attributes = options['contract.default'].shipping_method.to_nested_hash
  end

  def save_shipping_method!(model:, **)
    model.save
  end
end
