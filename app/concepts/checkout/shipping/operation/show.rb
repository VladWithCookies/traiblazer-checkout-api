class Checkout::Shipping::Show < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Shipping::Lib::Step::Model
  step Checkout::Shipping::Lib::Step::PrepareRenderer
end
