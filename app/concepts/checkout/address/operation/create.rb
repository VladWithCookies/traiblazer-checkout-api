class Checkout::Address::Create < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Address::Lib::Step::Model

  step Contract::Build(constant: Checkout::Address::Contract::Create)
  step Contract::Validate()

  step :build_addresses!
  step :save_addresses!

  step Checkout::Address::Lib::Step::PrepareRenderer

  def build_addresses!(options, model:, **)
    contract = options['contract.default']
    model.build_billing_address
    model.build_shipping_address
    model.billing_address.attributes = contract.billing_address.to_nested_hash
    model.shipping_address.attributes = contract.shipping_address.to_nested_hash
  end

  def save_addresses!(model:, **)
    model.billing_address.save
    model.shipping_address.save
  end
end
