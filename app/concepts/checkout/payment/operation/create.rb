class Checkout::Payment::Create < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Payment::Lib::Step::Model
  step Checkout::Payment::Lib::Step::PrepareRenderer
  
  step Contract::Build(constant: Checkout::Payment::Contract::Create)
  step Contract::Validate()

  step :build_credit_card!
  step :save!

  def build_credit_card!(options, model:, **)
    model.build_credit_card
    model.credit_card.attributes = options['contract.default'].credit_card.to_nested_hash
  end

  def save!(model:, **)
    model.save
  end
end
