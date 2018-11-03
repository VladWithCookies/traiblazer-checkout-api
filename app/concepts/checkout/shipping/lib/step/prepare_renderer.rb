class Checkout::Shipping::Lib::Step::PrepareRenderer
  extend Uber::Callable

  def self.call(options, **)
    options['renderer_options'] = {
      class: {
        Order: Checkout::Shipping::Representer::Show,
        Address: Checkout::Shipping::Representer::Address
      },
      include: %i(billing_address shipping_address)
    }
  end
end
