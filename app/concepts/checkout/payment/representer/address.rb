module Checkout::Payment::Representer
  class Address < Lib::Representer::BaseRepresenter
    type 'addresses'

    attributes :first_name,
               :last_name,
               :address_line_1,
               :address_line_2,
               :city,
               :country,
               :zip_code
  end
end
