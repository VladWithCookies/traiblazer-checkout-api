module Checkout::Payment::Representer
  class Show < Lib::Representer::BaseRepresenter
    type 'orders'

    attributes :state,
               :total,
               :item_total,
               :tax_amount,
               :shipment_amount

    has_one :billing_address
    has_one :shipping_address
    has_one :shipping_method
  end
end
