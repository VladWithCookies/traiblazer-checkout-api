class Checkout::Address::Show < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Address::Lib::Step::Model
  step Checkout::Address::Lib::Step::PrepareRenderer
end
