class Checkout::Address::Lib::Step::PrepareRenderer
  extend Uber::Callable

  def self.call(options, **)
    options['renderer_options'] = { class: { Order: Checkout::Address::Representer::Show } }
  end
end
