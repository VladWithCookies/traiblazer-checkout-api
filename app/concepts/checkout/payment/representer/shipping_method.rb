module Checkout::Payment::Representer
  class ShippingMethod < Lib::Representer::BaseRepresenter
    type 'shipping-methods'

    attributes :name
  end
end
