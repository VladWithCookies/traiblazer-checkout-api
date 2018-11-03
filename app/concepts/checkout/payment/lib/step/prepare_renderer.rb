class Checkout::Payment::Lib::Step::PrepareRenderer
  extend Uber::Callable

  def self.call(options, **)
    options['renderer_options'] = {
      class: {
        Order: Checkout::Payment::Representer::Show,
        Address: Checkout::Payment::Representer::Address,
        ShippingMethod: Checkout::Payment::Representer::ShippingMethod
      },
      include: %i(billing_address shipping_address shipping_method)
    }
  end
end
