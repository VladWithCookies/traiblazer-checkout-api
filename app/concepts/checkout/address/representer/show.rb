module Checkout::Address::Representer
  class Show < Lib::Representer::BaseRepresenter
    type 'orders'

    attributes :state,
               :total,
               :item_total,
               :tax_amount,
               :shipment_amount
  end
end
