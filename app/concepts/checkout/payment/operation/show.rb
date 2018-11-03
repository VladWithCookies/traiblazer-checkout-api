class Checkout::Payment::Show < Trailblazer::Operation
  extend Representer::DSL

  representer :render, JSONAPI::Serializable::Renderer

  step Checkout::Payment::Lib::Step::Model
  step Checkout::Payment::Lib::Step::PrepareRenderer
end
